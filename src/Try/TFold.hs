module Try.TFold
  ( 
    reverse'
    , sum'
    , map'
  ) where

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x: acc) []

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x ) 0 xs

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x: acc) [] xs
