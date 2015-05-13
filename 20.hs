removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = let removeAt' 1 (x:xs) ys = (x, ys ++ xs)
                    removeAt' n (x:xs) ys = removeAt' (n - 1) xs (ys ++ [x])
                 in removeAt' n xs []

main = do
  print $ removeAt 2 "abcd"

