{-# LANGUAGE OverloadedStrings #-}
module Book.HajimeteHaskell.Chap03.IntToArraySpec where
import Test.HUnit

import Book.HajimeteHaskell.Chap03.IntToArray

intToArrayTestList :: Test
intToArrayTestList = TestList
  [ 
    "intToArray test 1" ~:   intToArray 3 4  ~?= [3, 3, 3, 3]
  , "intToArray test 2" ~:   coptToInt opt1  ~?= 120
  , "intToArray test 3" ~:   coptToInt opt2  ~?= 120
  ]
