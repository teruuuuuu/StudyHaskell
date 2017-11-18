module Main where

import Lib
-- import Book.HajimeteHaskell.Chap01.Basic
-- import Book.HajimeteHaskell.Chap02.FizzBuzz
-- import Book.HajimeteHaskell.Chap03.TreeDict 

-- import Book.SugoiHaskell.Chap06.PhoneBook
-- import Book.SugoiHaskell.Chap10.Heathrow
-- import Try.TFold
import Book.HajimeteHaskell.Chap07.ParseDateTime

main :: IO ()
main = do
    -- putStrLn $ reverse' "abcdefg"
    -- print $ add 3 5
    -- print $ addOne 4
    -- print $ findKey "penny" phoneBook
    -- print $ roadStep([], []) (head heathrowToLondon)
    print $ parseDateTime "1987/07/23 15:00:00"
    
    
