module Problem02 where

fibonacci :: (Num a) => a -> a -> [a]
fibonacci a b = (a+b):fibonacci b (a+b) 

calc = filter even (takeWhile (<= 4000000) (fibonacci 1 1))

-- calc = [x | x <- fibonacci 1 2, x <=100, x `mod` 2 == 0]

required = calc

solve = sum required