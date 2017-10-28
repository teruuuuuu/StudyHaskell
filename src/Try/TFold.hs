module Try.TFold
  ( 
    reverse'
    , sum'
    , tReverse
    , tSum
  ) where

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x: acc) []

tReverse :: IO ()
tReverse = do
    putStrLn $ reverse' "abcdefg"

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x ) 0 xs

tSum :: IO ()
tSum = do
    print $ sum' [1..100] 

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x: acc) [] xs
