module Book.SugoiHaskell.Chap06.PhoneBook
( 
    findKey
  , phoneBook
) where

phoneBook = 
    [("betty", "555-2938")
    ,("bonnie", "452-2928")
    ,("patsy", "293-2928")
    ,("lucille", "205-2928")
    ,("wenday", "939-8282")
    ,("penny", "853-2492")
    ]
    
-- findKey :: (Eq k) => k -> [(k, v)] -> v
-- findKey key xs = snd. head . filter (\(k, v) -> key == k) $ xs
findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k, v): xs)
    | key == k = Just v
    | otherwise = findKey key xs