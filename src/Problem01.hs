module Problem01 where

-- solve :: (Ord a, Integer a) => a -> a
solve limit = sum [x | x <- [1..limit], x `mod` 5==0 || x `mod` 3==0]