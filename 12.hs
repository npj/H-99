data Encoded a = Single a | Multiple Int a deriving Show
decodeModified :: (Eq a) => [Encoded a] -> [a]
decodeModified = concat . map decodeValue
  where decodeValue (Single x) = [x]
        decodeValue (Multiple n x) = replicate n x

main = do
  print $ "decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']"
  print $ decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']

