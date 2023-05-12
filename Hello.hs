main :: IO ()
main = do print (add 2 4)
          print $ twice id 2
          print $ twice square 4
          print $ add2 2 3
          print $ map (\x -> x*x) [1, 2, 3]
          print $ double 3

add :: Int -> Int -> Int
add x y = x + y
square :: Int -> Int
square x = x * x

factorial :: Int -> Int
-- factorial x = 
--   if x == 0 then 1
--             else x * factorial (x - 1)
factorial 0 = 1
factorial x = x * factorial (x - 1)

twice :: (a -> a) -> a -> a
twice f x = f (f x)

add2 = \ x y -> x+y

mult :: Int -> Int -> Int
mult x y = x * y
double :: Int -> Int
double = mult 2
mult' :: (Int, Int) -> Int
mult' (x, y) = x * y

foo x y = f x (g y)

n :: Int = 124
m = 111 :: Int

(a, b, c) = (123, 3.2, "hello")
t@(d,e,f) = (123, 3.1, "wwwww")

getValue defval maybe =
  case maybe of
    Nothing -> defval
    Just x -> x

absMaybe x =
  case x of
    Nothing -> 0
    Just x | x < 0 -> -x
           | otherwise -> x

absss x = if x < 0 then -x else x

area2 r = pi * square r
  where
    pi = 3.14
    square x = x*x

