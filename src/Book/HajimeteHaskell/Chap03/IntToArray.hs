{-# OPTIONS_GHC -Wno-unused-top-binds #-}
module Book.HajimeteHaskell.Chap03.IntToArray where



-- Main.hsに書き、`stack runghc -- Main.hs`で実行。
-- Int型の第一引数、Int型の第二引数、Int型のリストの返り値。
intToArray :: Int -> Int -> [Int]
-- リストからl分取り出す。
intToArray i l = take l (repeat i)

data CmdOption = COptInt Integer
                   | COptBool Bool
                   | COptStr String
                   deriving Show
opt1, opt2 :: CmdOption
opt1 = COptInt 120
opt2 = COptStr "0x78"
    
coptToInt :: CmdOption -> Int
coptToInt (COptInt  n    ) = fromIntegral n
coptToInt (COptStr  x    ) = read x
coptToInt (COptBool True ) = 1
coptToInt (COptBool False) = 0
    
-- main :: IO ()
-- main = do
--   print $ coptToInt opt1
--   print $ coptToInt opt2