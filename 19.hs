rotate :: [a] -> Int -> [a]
rotate (x:xs) n
  | n == 0    = (x:xs)
  | n < 0     = rotate (xs ++ [x]) (n + length xs)
  | otherwise = rotate (xs ++ [x]) (n - 1)

main = do
  print $ rotate ['a','b','c','d','e','f','g','h'] 3
  print $ rotate ['a','b','c','d','e','f','g','h'] (-2)
