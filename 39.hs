primes :: Integer -> [Integer]
primes n = if n < 2
              then []
              else filter noDivisors [2..n]
  where noDivisors n = (all (n `doesNotDivide`) previousPrimes)
        doesNotDivide a b = a == b || a `mod` b > 0
        previousPrimes = primes (floor $ sqrt $ fromIntegral n)

primesR :: Integer -> Integer -> [Integer]
primesR x y = filter inRange (primes y)
  where inRange z = x <= z && z < y

