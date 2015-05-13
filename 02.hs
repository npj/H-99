myButLast :: [a] -> a
myButLast [x,y]    = x
myButLast (x:y:ys) = myButLast (y:ys)

main = do
  print "myButLast [1,2,3,4]"
  print $ myButLast [1,2,3,4]
  print "myButLast ['a'..'z']"
  print $ myButLast ['a'..'z']

