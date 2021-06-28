module Problem04 where

-- reverseNum :: (Num a) => a -> a
reverseNum :: (Read c, Show a) => a -> c
reverseNum x = read . reverse . show $ x

-- -- property check/testing
-- foo_prop :: Int -> Bool 
-- foo_prop x = x > reverseNum x 

products :: [Integer]
products = [x * y | x <- [101..999], y <- [101..999]]

possible = [x | x<-products, x == reverseNum x]

solve = maximum possible