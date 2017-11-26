module Book.HajimeteHaskell.Chap05.Hajimete05 where


type Category = String
type Name = String
type Price = Integer
type Menu = [(Category, [(Name, Price)])]
type Item = (Category, Name, Price)



getItem :: Menu -> Category -> Name -> Maybe Item
getItem menu category name
  -- パターンマッチするたびにネストが増えてしまう
  = case lookup category menu of
    Just subMenu -> case lookup name subMenu of
      Just price -> Just (category, name, price)
      -- マッチしなかった場合はNothing
      Nothing -> Nothing
    -- この計算ではマッチしなかった時の処理はNothingと決まっているので何度も書きたくない
    Nothing -> Nothing  

getItemWithM :: Menu -> Category -> Name -> Maybe Item
getItemWithM menu category name = do
    subMenu <- lookup category menu
    price <- lookup name subMenu
    return (category, name, price)

-- main :: IO ()
-- main = do
--     print $ getItem sampleMenu "Foods" "Hamburger"
--     print $ getItemWithM sampleMenu "Foods" "Hamburger"
--     where
--         sampleMenu :: Menu
--         sampleMenu = [ 
--             ("Foods",
--             [ ("Hamburger",120)
--             , ("FrenchFries", 100)
--             ] )
--            ,("Drinks",
--             [ ("Cola", 80)
--             , ("Tea", 100)
--             ] )
--           ]
