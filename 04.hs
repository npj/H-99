myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

main = do
  print "myLength [123, 456, 789]"
  print $ myLength [123, 456, 789]
  print "myLength \"Hello, world!\""
  print $ myLength "Hello, world!"

