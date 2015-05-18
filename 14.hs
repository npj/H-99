dupli :: [a] -> [a]
dupli = concat . map (replicate 2)

main = do
  print "dupli [1, 2, 3]"
  print $ dupli [1, 2, 3]

