import Prelude hiding (map)

main = do print "list"
          print x
          print y
          print z
          print $ tail x
          print $ [1] ++ [2, 3]
          print $ length [1, 2, 3]
          print $ map (\x -> x + 2) [1, 2, 3]
          print $ foldr (-) 0 [1, 2, 3]
          print $ foldl (+) 0 [1, 2, 3]
          print $ foldl (-) 0 [1, 2, 3]
          print $ sum' [1, 2, 3]
          print $ map' (^2) [1, 3, 4]
          print $ all' even [1, 2, 3]
          print $ [x | x <- [1..10], odd x]
          print $ [x |  x <- [1, 2]]
          print $ qsort [3, 2, 4, 1, 5]
          print a

x = 1 : 2 : 3 : []
y = [1, 2, 3]
z = head [1, 2, 3]

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

sum' = foldr (+) 0
map' f = foldr (\x a -> f x : a) []
all' p = foldr (\x a -> p x && a) True
qsort [] = []
qsort (p:xs) = qsort smaller ++ [p] ++ qsort larger
  where smaller = [x | x <- xs, x < p]
        larger = [x | x <- xs, x >= p]

a = 1 : [2,3]


