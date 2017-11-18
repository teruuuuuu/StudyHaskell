{-# LANGUAGE OverloadedStrings #-}
module Book.SugoiHaskell.Chap10.HeathrowSpec where
import Test.HUnit


import Book.SugoiHaskell.Chap10.Heathrow

heathrowTestList :: Test
heathrowTestList = TestList
  [ 
      "HeathrowSpec test 1" ~: dist heathrowToLondon ~?= 75
    , "HeathrowSpec test 2" ~: snd (optimalPath heathrowToLondon !! 0 )~?= 10  

  ]
