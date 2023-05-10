main = do print (add 2 4)
          print (add 2 4 * 3)
          print (square (add 2 (2 * 4)))
          print (square $ add 2 $ 2 * 4)

add x y = x + y
square x = x * x

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

