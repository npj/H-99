import System.Random
import Data.List

diffSelect :: Int -> Int -> [Int]
diffSelect n m = take n . nub $ randomRs (1, m) (mkStdGen 0)

main = do
  print $ "diffSelect 6 49"
  print $ diffSelect 6 49

