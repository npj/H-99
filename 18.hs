slice :: [a] -> Int -> Int -> [a]
slice xs i j = map fst $ filter (\(_,k) -> i <= k && k <= j) (zip xs [1..])

main = do
  print "slice ['a','b','c','d','e','f','g','h','i','k'] 3 7"
  print $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
