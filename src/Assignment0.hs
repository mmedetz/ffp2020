{-# HLINT ignore "Use camelCase" #-}
module Assignment0 where

type Nat0 = Integer

factorial :: Nat0 -> Nat0
factorial 0 = 1
factorial n = n * factorial (n - 1)

fibonacci :: Nat0 -> Nat0
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

binom :: Nat0 -> Nat0 -> Nat0
binom m n = div (factorial n) (factorial m * factorial (n - m))


fac_faulty :: Nat0 -> Nat0
fac_faulty n | n < 0   = fac_faulty (-n)
             | n == 0  = 1
             | n <= 10 = n * fac_faulty (n - 1)
             | n <= 15 = n + fac_faulty (n - 1)
             | otherwise    = fac_faulty 42


             