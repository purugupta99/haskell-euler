module Main where

import           System.Environment (getArgs)

import qualified Problem01
import qualified Problem02
import qualified Problem03
import qualified Problem04

problemMap :: String -> IO()
problemMap "1" = print (Problem01.solve 999)
problemMap "2" = print Problem02.solve
problemMap "3" = print (Problem03.solve 600851475143)
problemMap "4" = print Problem04.solve 


main :: IO ()
main = do
    arg <- getLine

    problemMap arg