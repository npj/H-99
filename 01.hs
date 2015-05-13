myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs

main = do
  print "myLast [1,2,3,4]"
  print $ myLast [1,2,3,4]
  print "myLast ['x','y','z']"
  print $ myLast ['x','y','z']

