combinations :: Int -> [a] -> [([a], [a])]
combinations 0 xs = [([], xs)]
combinations _ [] = []
combinations n (x:xs) = as ++ bs
  where as = map (\(ys,zs) -> (x:ys,zs)) (combinations (n - 1) xs)
        bs = map (\(ys,zs) -> (ys,x:zs)) (combinations n xs)

group :: [Int] -> [a] -> [[[a]]]
group [] _ = [[]]
group (n:ns) xs = concatMap combine (combinations n xs)
  where combine (ys,zs) = map (ys:) (group ns zs)

main = do
  print "group [2,3,4] [\"aldo\",\"beat\",\"carla\",\"david\",\"evi\",\"flip\",\"gary\",\"hugo\",\"ida\"]"
  print $ group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
  print "group [2,2,5] [\"aldo\",\"beat\",\"carla\",\"david\",\"evi\",\"flip\",\"gary\",\"hugo\",\"ida\"]"
  print $ group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]

