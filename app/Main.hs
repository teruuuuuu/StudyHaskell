module Main where

import Lib
-- import HajimeteHaskell.Chap01.Basic
-- import HajimeteHaskell.Chap02.FizzBuzz
-- import HajimeteHaskell.Chap03.TreeDict 

-- import SugoiHaskell.Chap06.PhoneBook
import SugoiHaskell.Chap10.Heathrow
-- import Try.TFold

main :: IO ()
main = do
    -- putStrLn $ reverse' "abcdefg"
    -- print $ add 3 5
    -- print $ addOne 4
    -- print $ findKey "penny" phoneBook
    print $ roadStep([], []) (head heathrowToLondon)
    
    
