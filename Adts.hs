import Prelude hiding (fst, length)

main = do print "adts"
          print $ area (Rect 2 3)
          print $ area (Tri 2 3)
          print $ holiday Sun
          print $ holiday Mon
          print $ fst (Tuple 123 456)
          print $ fst (Tuple "hoge" 1)
          print $ name taro
          print $ age taro
          print $ intro taro
          print $ age $ inc yagi
          print $ length $ Cons 1 (Cons 2 (Cons 3 Nil))
          print $ atoi (DigitStr "0123")
          print $ value prefId
          print $ ratioToFloat (3 :/ 2)

data Shape = Rect Double Double
           | Tri Double Double
area :: Shape -> Double

area (Rect x y) = x * y
area (Tri x y) = x * y /2

data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun
holiday :: DayOfWeek -> Bool

holiday Sat = True
holiday Sun = True
holiday _ = False

data Tuple a b = Tuple a b
fst :: Tuple a b -> a
fst (Tuple a _) = a

-- data Person = Person String Int
data Person = Person { name :: String, age :: Int }
intro :: Person -> String
intro (Person { name = n }) = "My name is " ++ n ++ "."
inc :: Person -> Person
inc p = p { age = age p + 1 }

taro = Person { name = "Taro", age = 25 }
yagi = Person "Yagi" 5

data List a = Nil | Cons a (List a)
length :: List a -> Int
length Nil = 0
length (Cons x xs) = 1 + length xs

newtype DigitString = DigitStr String
atoi :: DigitString -> Int
atoi (DigitStr xs) = read xs

newtype PrefId = PrefId { value :: Int}
prefId = PrefId { value = 1 }


data Ratio = Integer :/ Integer
ratioToFloat :: Ratio -> Float
ratioToFloat (x :/ y) = fromIntegral x / fromIntegral y

