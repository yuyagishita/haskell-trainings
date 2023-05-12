main = do print "operators"
          print $ 2.0 ^^^ 8
          print $ 2.0 ^^^ 0
          print $ 1 +++ 1
          print $ (+) 2 3
          print $ (-) 4 1
          print $ 5 `div` 2
          print $ div 5 2
          print $ map (2 *) [1, 2, 3]

(^^^) :: Double -> Int -> Double
_ ^^^ 0 = 1.0
x ^^^ y = x * (x ^^^ (y - 1))

(+++) :: Int -> Int -> Int
x +++ y = x + y + 1
