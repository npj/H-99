-- is x divisible by any number less than
-- the square root of x?
isPrime ::  Int -> Bool
isPrime x = all (x `notDivisibleBy`) [2..(floor $ sqrt $ fromIntegral x)]
  where notDivisibleBy a b = a `mod` b > 0

main = do
  print "isPrime \"7\""
  print $ isPrime 7

