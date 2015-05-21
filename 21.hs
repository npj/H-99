insertAt :: a -> [a] -> Int -> [a]
insertAt x ys 1 = x:ys
insertAt x (y:ys) i = y:insertAt x ys (i - 1)

main = do
  print "insertAt 'X' \"abcd\" 2"
  print $ insertAt 'X' "abcd" 2
