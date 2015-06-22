primeFactors :: Integer -> [Integer]
primeFactors n = primeFactors' n 2
  where primeFactors' x i
          | i * i > x      = [x]
          | x `mod` i == 0 = i : primeFactors' (x `div` i) i
          | otherwise      = primeFactors' x (i + 1)

