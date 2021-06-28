module Main where

import System.Exit (exitFailure, exitSuccess)
import Test.HUnit

import qualified Problem01
import qualified Problem02
import qualified Problem03
import qualified Problem04

test1 = TestCase (assertEqual "t1" (Problem01.solve 999) 233168)
test2 = TestCase (assertEqual "t2" Problem02.solve 4613732)
test3 = TestCase (assertEqual "t3" Problem04.solve 906609)

tests = TestList [test1, test2, test3]

main :: IO()
main = do

    count <- runTestTT tests
    if failures count > 0
        then do
            putStr("Total failed cases: " ++ show (failures count))
            exitFailure 
        else do
            putStr "All tests passed!"
            exitSuccess
