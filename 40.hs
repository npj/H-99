primes :: Integer -> [Integer]
primes n = if n < 2
              then []
              else filter noDivisors [2..n]
  where noDivisors n = (all (n `doesNotDivide`) previousPrimes)
        doesNotDivide a b = a == b || a `mod` b > 0
        previousPrimes = primes (floor $ sqrt $ fromIntegral n)

goldbach :: Integer -> (Integer, Integer)
goldbach n = (candidate, (n - candidate))
  where candidate = head $ filter satisfies candidates
        candidates = primes n
        satisfies x = (n - x) `elem` candidates

