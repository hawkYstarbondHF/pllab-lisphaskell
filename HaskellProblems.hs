{-|
Module      : HaskellProblems
Description : Challenging Haskell Problems
Author      : Jacob Schrum, Last modified 6/25/2023

Follow the instructions below
-}
module HaskellProblems where

{-|	
  A recursive function that appends two flat lists.
  Keep consing the head of the left list to a recursive
  call on the tail of the left list (right list remains
  the same).

  lhs = left list
  rhs = right list
  return list of values in lhs followed by values in rhs
-}
append :: [a] -> [a] -> [a]
append lhs rhs = [] -- ^ TODO: implement

{-|	
  Inefficient recursive definition of the n-th Fibonacci number,
  where F(0) = 0, F(1) = 1, and F(n) = F(n-1) + F(n-2) beyond that. 

  n = position in sequence
  return Fibonacci number F(n)
-}
slowFib :: Integer -> Integer
slowFib n = 0 -- ^ TODO: implement

{-|	
  O(n) recursive definition of the n-th Fibonacci number
  that uses a helper method that can remember the previous
  two values in the sequence. 

  n = position in sequence
  return Fibonacci number F(n)
-}
fastFib :: Integer -> Integer
fastFib n = 0 -- ^ TODO: implement

{-|	
  Define an infinite list (a stream)
  of Fibonacci numbers, and then compute
  the n-th Fibonacci number by getting 
  the n-th element of that list. The
  function part of this problem has been defined
  for you. You need to define the infinite 
  list part in the where clause. The list
  is named fibs, and it will be defined 
  in terms of itself. We know the first
  two elements in the list are 0 and 1, so
  that part can be hard-coded, but this
  will be appended to the result of adding
  each element of fibs to the corresponding
  element in the tail of fibs. This addition
  can be carried out using zipWith.
  https://hackage.haskell.org/package/base-4.18.0.0/docs/Prelude.html#v:zipWith

  n = position in sequence
  return Fibonacci number F(n)
-}
streamFib :: Integer -> Integer
streamFib n = fibs !! (fromInteger n)
    where
        fibs = [] -- ^ TODO: implement

{-|	
  Define the Mean Squared Error of a list
  of Double without defining any recursive
  functions. Use pre-existing functions,
  and especially higher-order functions.
  Mean Squared Error is 1/n multiplied by
  the sum of the quantities (x - x_avg)^2,
  where x takes on each value in the list
  and x_avg is the average of all values 
  in the list. So, you will calculate the
  difference between each value and the
  average (the error), square it, and get
  the average (mean) of that. You'll want
  to use the map function:
  https://hackage.haskell.org/package/base-4.18.0.0/docs/Prelude.html#v:map

  xs = list of doubles
  return Mean Squared Error of values in list
-}
mse :: [Double] -> Double
mse xs = 0.0