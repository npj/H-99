import Data.List

lsort :: [[a]] -> [[a]]
lsort = sortBy (\xs ys -> (length xs) `compare` (length ys))

lfsort :: [[a]] -> [[a]]
lfsort = map fst . sortFreq . pairFreq . pairLen
  where sortFreq        = sortBy (\(_,f1) (_,f2) -> f1 `compare` f2)
        pairFreq xs     = map (\(ys,l1) -> (ys,countFreq l1 xs)) xs
        countFreq l1 xs = length $ filter (\(ys,l2) -> l1 == l2) xs
        pairLen         = map (\xs -> (xs,length xs))

main = do
  print "lsort [\"abc\",\"de\",\"fgh\",\"de\",\"ijkl\",\"mn\",\"o\"]"
  print $ lsort ["abc","de","fgh","de","ijkl","mn","o"]
  print "lfsort [\"abc\", \"de\", \"fgh\", \"de\", \"ijkl\", \"mn\", \"o\"]"
  print $ lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"]
