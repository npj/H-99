import System.Random
import Data.List

rndSelect xs n = let indices = take n . nub $ randomRs (0, (length xs - 1)) (mkStdGen 0)
                  in map (xs !!) indices

main = do
  print "rndSelect \"abcdefgh\" 3"
  print $ rndSelect "abcdefgh" 3

