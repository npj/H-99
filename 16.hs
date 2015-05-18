dropEvery :: [a] -> Int -> [a]
dropEvery xs n = map fst $ filter (\(_,i) -> i `mod` n /= 0) (zip xs [1..])

main = do
  print "dropEvery \"abcdefghik\" 3"
  print $ dropEvery "abcdefghik" 3
