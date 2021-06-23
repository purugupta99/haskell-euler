module Problem01 where

-- solve :: (Ord a, Integer a) => a -> a
solve = sum [x | x <- [1..999], x `mod` 5==0 || x `mod` 3==0]