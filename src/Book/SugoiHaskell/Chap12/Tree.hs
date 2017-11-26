{-# LANGUAGE OverloadedStrings #-}
module Book.SugoiHaskell.Chap12.Tree where

data ZipList a = ZipList {
    getZipList :: [a]
} deriving(Show)

-- main :: IO ()
-- main = do
--     print $ [(+1),(*100),(*5)] <*> [1,2,3]
--     print $ getZipList $ ZipList [(+1),(*100),(*5)] <*> ZipList 11,2,3] $ [2,200,15]