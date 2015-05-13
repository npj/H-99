pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = [x:(takeWhile (== x) xs)] ++ (pack (dropWhile (== x) xs))

main = do
  print "pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']"
  print $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']

