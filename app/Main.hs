module Main where

import           System.Environment (getArgs)

import qualified Problem01
import qualified Problem02

problemMap :: String -> IO()
problemMap "1" = print Problem01.solve
problemMap "2" = print Problem02.solve


main :: IO ()
main = do
    arg <- getLine

    problemMap arg