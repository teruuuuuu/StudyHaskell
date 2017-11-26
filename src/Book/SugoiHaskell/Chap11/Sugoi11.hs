{-# LANGUAGE OverloadedStrings #-}
module Book.SugoiHaskell.Chap11.Sugoi11 where



-- main :: IO ()
-- main = do
--     line <- getLine
--     let line' = reverse line
--     putStrLn $ "You said " ++ line' ++ " backwards!"
--     -- ファンクター(IOアクションのgetLineでMaybeを返す)をfmapでreverseする
--     line2 <- fmap reverse getLine
--     putStrLn $ "You said " ++ line2 ++ " backwards!"
--     print $ fmap (*3) (+100) 1
--     print $ (*3) `fmap` (+100) $ 1
--     print $ fmap (show . (*3)) (+100) 1
--     print $ [(+1),(*100),(*5)] <*> [1,2,3]
--     print $ fmap (replicate 3) [1,2,3,4]
--     print $ fmap id (Just 3)
--     print $ fmap id [1..5]
--     print $ fmap ($9) a
--     print $ Just (+3) <*> Just 9
--     print $ Just (++"hahah") <*> Nothing
--     print $ [(+),(*)] <*> [1,2] <*> [3,4,5]
--     where
--         a = fmap (*) [1,2,3,4]
