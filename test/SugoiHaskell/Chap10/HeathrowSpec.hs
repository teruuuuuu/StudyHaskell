{-# LANGUAGE OverloadedStrings #-}
module SugoiHaskell.Chap10.HeathrowSpec where
import Test.HUnit


import SugoiHaskell.Chap10.Heathrow

heathrowTestList :: Test
heathrowTestList = TestList
  [ 
      "HeathrowSpec test 1" ~: dist heathrowToLondon ~?= 75

  ]
