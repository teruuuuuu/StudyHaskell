{-# LANGUAGE OverloadedStrings #-}
module SugoiHaskell.Chap06.PhoneBookSpec where
import Test.HUnit


import SugoiHaskell.Chap06.PhoneBook

testBook = [("wenday", "939-8282"), ("judes", "245-8716")]


phoneBookTestList :: Test
phoneBookTestList = TestList
  [ 
      "PhoneBookSpec test 1" ~: findKey "penny" phoneBook ~?= Just "853-2492"
    , "PhoneBookSpec test 2" ~: findKey "wenday" testBook ~?= Just "939-8282"
    , "PhoneBookSpec test 3" ~: findKey "nobody" testBook ~?= Nothing

  ]
