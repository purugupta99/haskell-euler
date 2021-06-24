module Problem03 where

import Math.NumberTheory.Primes (factorise)

solve x = factorise(x :: Integer)