repli :: [a] -> Int -> [a]
repli xs n = concat $ map (replicate n) xs

main = do
  print "repli \"abc\" 3"
  print $ repli "abc" 3

