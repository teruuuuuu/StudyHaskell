{-# LANGUAGE OverloadedStrings #-}
module HajimeteHaskell.Chap02.HajiChap02Spec where
import Test.HUnit

import HajimeteHaskell.Chap02.FizzBuzz 

hajiChap02TestList :: Test
hajiChap02TestList = TestList
  [ 
      "hajiChap02 test 1" ~: break (\n -> n == 'c') "abcdef" ~?= ("ab", "cdef")
   ,  "hajiChap02 test 2" ~: breakD "abcdef" ~?= ("abc", "def")
   ,  "hajiChap02 test 3" ~: addOneTwice 9 ~?= 100
   ,  "hajiChap02 test 4" ~: checkAge 29 ~?= 1
   ,  "hajiChap02 test 5" ~: checkAge 30 ~?= 0
   
  ]
