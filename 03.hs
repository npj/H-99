elementAt :: [a] -> Int -> a
elementAt xs n = xs !! (n - 1)

main = do
  print "elementAt [1,2,3] 2"
  print $ elementAt [1,2,3] 2
  print "elementAt \"haskell\" 5"
  print $ elementAt "haskell" 5

