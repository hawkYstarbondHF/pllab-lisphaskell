import System.Exit (exitFailure)
import Test.HUnit
import System.IO.Unsafe
import System.IO.Silently
import qualified HaskellProblems as HP

testAppend1 = TestCase (assertEqual "append [1,2,3,4] [5,6,7]" [1,2,3,4,5,6,7] (HP.append [1,2,3,4] [5,6,7]))
testAppend2 = TestCase (assertEqual "append [1] [5,6,7]" [1,5,6,7] (HP.append [1] [5,6,7]))
testAppend3 = TestCase (assertEqual "append [] [5,6,7]" [5,6,7] (HP.append [] [5,6,7]))
testAppend4 = TestCase (assertEqual "append [5,6,7] []" [5,6,7] (HP.append [5,6,7] []))

indexVals = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
someFibs  = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89,144,233,377,610,987, 1597, 2584]

testSlowFib = TestCase (assertEqual "slowFib" someFibs (map HP.slowFib indexVals))

testFastFib = TestCase (assertEqual "fastFib" someFibs (map HP.fastFib indexVals))

testStreamFib = TestCase (assertEqual "streamFib" someFibs (map HP.streamFib indexVals))

assertApproxEqual a b = abs (a - b) < 0.0001

testMSE1 = TestCase (assertEqual "mse [1.0 .. 10.0]" 8.25 (HP.mse [1.0 .. 10.0]))
testMSE2 = TestCase (assertEqual "mse [1.0,2.0,3.0] ~ 0.6666666666666666" True (assertApproxEqual 0.6666666666666666 (HP.mse [1.0,2.0,3.0])))
testMSE3 = TestCase (assertEqual "mse [1.5, -5.23, 2023.2, 500.2, 234.0, -439.203] ~ 616405.0404045834" True (assertApproxEqual 616405.0404045834 (HP.mse [1.5, -5.23, 2023.2, 500.2, 234.0, -439.203])))

tests = TestList [TestLabel "testAppend1" testAppend1,
                  TestLabel "testAppend2" testAppend2,
                  TestLabel "testAppend3" testAppend3,
                  TestLabel "testAppend4" testAppend4,
                  TestLabel "testSlowFib" testSlowFib,
                  TestLabel "testFastFib" testFastFib,
                  TestLabel "testStreamFib" testStreamFib,
                  TestLabel "testMSE1" testMSE1,
                  TestLabel "testMSE2" testMSE2,
                  TestLabel "testMSE3" testMSE3]

main :: IO ()
main = do
  counts <- runTestTT tests
  if errors counts == 0 && failures counts == 0
    then return ()
    else exitFailure