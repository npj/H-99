myGCD :: Int -> Int -> Int
myGCD a b = if b == 0
              then abs a
              else myGCD b (a `mod` b)

