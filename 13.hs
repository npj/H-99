data Encoded a = Single a | Multiple Int a deriving Show
encodeDirect :: (Eq a) => [a] -> [Encoded a]
encodeDirect [] = []
encodeDirect [x] = [Single x]
encodeDirect (x:xs) = let encodeValue 1 x = Single x
                          encodeValue n x = Multiple n x
                          countWhile p [] = 0
                          countWhile p (x:xs) = if (p x)
                                                   then 1 + countWhile p xs
                                                   else 1
                       in (encodeValue (countWhile (== x) xs) x) : (encodeDirect $ dropWhile (== x) xs)

main = do
  print $ "encodeDirect \"aaaabccaadeeee\""
  print $ encodeDirect "aaaabccaadeeee"

