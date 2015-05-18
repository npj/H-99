encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = ((length $ takeWhile (== x) xs) + 1, x):(encode $ dropWhile (== x) xs)

data Encoded a = Single a | Multiple Int a deriving Show
encodeModified :: (Eq a) => [a] -> [Encoded a]
encodeModified = map encodePair . encode
  where encodePair (1, x) = Single x
        encodePair (n, x) = Multiple n x

main = do
  print "encodeModified \"aaaabccaadeeee\""
  print $ encodeModified "aaaabccaadeeee"

