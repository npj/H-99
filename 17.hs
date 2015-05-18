split :: [a] -> Int -> ([a], [a])
split xs n = split' xs n ([], [])
  where split' [] _ pair = pair
        split' (x:xs) n (as,_) = if n > 0
                                     then split' xs (n - 1) (as ++ [x], [])
                                     else (as, xs)

main = do
  print "split \"abcdefghik\" 3"
  print $ split "abcdefghik" 3

