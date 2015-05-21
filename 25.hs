import System.Random
import Data.List

rndPermu :: [a] -> [a]
rndPermu xs = let len = length xs
               in map (xs !!) . take len . nub $ randomRs (0, (len - 1)) (mkStdGen 0)

main = do
  print "rndPermu \"abcdef\""
  print $ rndPermu "abcdef"

