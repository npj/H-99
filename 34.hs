totient :: Int -> Int
totient 1 = 1
totient x = length $ filter (x `coprime`) [1..(x - 1)]
  where x `coprime` y = (gcd x y) == 1
