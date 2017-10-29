{-# LANGUAGE OverloadedStrings #-}
module Try.TFoldSpec where
import Test.HUnit

import Try.TFold as T

tFoldTestList :: Test
tFoldTestList = TestList
  [ 
      "TFoldSpec test 1" ~: 1 + 2 ~?= 3
      , "TFoldSpec test 2" ~: reverse' "abcdefg" ~?= "gfedcba"
      , "TFoldSpec test 3" ~: sum' [1..100]  ~?= 5050
  ]
