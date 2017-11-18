{-# LANGUAGE OverloadedStrings #-}
module Book.HajimeteHaskell.Chap03.GreetingSpec where
import Test.HUnit

import Book.HajimeteHaskell.Chap03.Greeting

greetingTestList :: Test
greetingTestList = TestList
  [ 
    "greeTing test 1" ~: hello (Human "takashi") ~?= "Hi, I'm takashi."
  , "greeTing test 2" ~: bye (Human "takashi") ~?= "See you."
  , "greeTing test 3" ~: laugh (Human "takashi")~?= "Zehahahah...!!"
  , "greeTing test 5" ~: sayHello2 [Human "atsuhiko", Human "shingo"] ~?= "Hi, I'm atsuhiko.\nHi, I'm shingo."
  ]
