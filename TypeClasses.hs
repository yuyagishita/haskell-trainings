import Prelude hiding (sum)

main :: IO ()
main = do
  print "type class"
  print $ sum [1, 2, 3]
  print $ sum [1.0, 2, 3]

sum :: Num a => [a] -> a
sum [] = 0
sum (x:xs) = x + sum xs

