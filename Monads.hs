f x = 2 * x

g x = return (2 * x)

div2 :: Int -> Maybe Int
div2 x = if even x then Just (x `div` 2)
                        else Nothing

div8 :: Int -> Maybe Int
-- div8 x = return x >>= div2 >>= div2 >>= div2
div8 x = do y <- div2 x
            z <- div2 y
            div2 z

main = do print $ fmap f (Just 5)
          print $ fmap f Nothing
          print $ fmap f [1,2,3]
          print $ fmap f []

          print $ Just 5 >>= g
          print $ Nothing >>= g
          print $ [1, 2, 3] >>= g

          print $ div8 32
          print $ div8 50
          print $ div8 256
