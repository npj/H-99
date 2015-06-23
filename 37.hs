import Data.List

primeFactors :: Integer -> [Integer]
primeFactors n = primeFactors' n 2
  where primeFactors' x i
          | i * i > x      = [x]
          | x `mod` i == 0 = i : primeFactors' (x `div` i) i
          | otherwise      = primeFactors' x (i + 1)

primeFactorsMult :: Integer -> [(Integer, Integer)]
primeFactorsMult = map encode . group . primeFactors
  where encode xs = (head xs, toInteger $ length xs)

phi :: Integer -> Integer
phi = foldl' term 1 . primeFactorsMult
  where term res (p,m) = res * (p - 1) * p ^ (m - 1)

