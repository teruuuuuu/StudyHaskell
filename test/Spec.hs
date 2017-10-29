{-# LANGUAGE OverloadedStrings #-}
module Main where
import Test.HUnit

import Try.TFoldSpec
import HajimeteHaskell.Chap02.HajiChap02Spec

import SugoiHaskell.Chap06.PhoneBookSpec
import SugoiHaskell.Chap06.GeometrySpec
import SugoiHaskell.Chap10.HeathrowSpec

main :: IO ()
main = do
  runTestTT $ TestList
    [ 
        "spec test 1" ~: 1 + 1 ~?= 2
--     ,  tFoldTestList
--     ,  hajiChap02TestList
--  ,  phoneBookTestList
 --  , geometrySpecTestList
     ,  heathrowTestList
    ]
  return ()
