[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=16961584)
# Programming Languages Lab - Functional Programming

This lab involves writing code in both Haskell and Common Lisp. Neither are installed in codespaces by default.
The setup process is streamlined for this lab. Simply run this command to install Haskell, Common Lisp, and the unit testing frameworks:
```
bash setup.bash
```
For Haskell, you will still need to manually run this extra command yourself:
```
source /home/codespace/.ghcup/env 
```
Once everything is installed, you can work on the problems below.

## How to interact with the files

Haskell: to load your code into the interpreter, run:
```
ghci HaskellProblems.hs
```
Use `:r` to reload your file as you make changes. Directly call the functions with test inputs as you complete them.

Common Lisp: to load your code into the interpreter, run:
```
sbcl --load lisp-problems.lisp
```
Use `(load "lisp-problems.lisp")` to reload your file as you make changes. 
You can also `defun` the functions directly in the interpreter, copy-pasting
from your file as needed. Directly call the functions with test inputs as you complete them.

Complete all the functions in both files, following the provided advice/instructions.

## Testing Instructions

To test your Haskell code, run:
```
runghc HaskellProblemsTest.hs
```
To test your Lisp code, run:
```
sbcl --script lisp-problems-test.lisp
```