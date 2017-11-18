{-# LANGUAGE OverloadedStrings #-}
module Main where
import Test.HUnit

import Try.TFoldSpec

import Book.BasicOfFp.Chap01.CoordSpec

import Book.HajimeteHaskell.Chap02.HajiChap02Spec
import Book.HajimeteHaskell.Chap03.GreetingSpec
import Book.HajimeteHaskell.Chap07.ParseDateTimeSpec
import Book.HajimeteHaskell.Chap09.Data.Hjq.ParserSpec

import Book.SugoiHaskell.Chap06.PhoneBookSpec
import Book.SugoiHaskell.Chap06.GeometrySpec
import Book.SugoiHaskell.Chap07.TreeSpec
import Book.SugoiHaskell.Chap10.HeathrowSpec


main :: IO ()
main = do
  runTestTT $ TestList
    [ 
        "spec test 1" ~: 1 + 1 ~?= 2
    -- , coordTestList 
    -- ,  tFoldTestList
    -- ,  hajiChap02TestList
    -- ,  phoneBookTestList
    -- ,  geometrySpecTestList
    -- ,  heathrowTestList
    -- ,  treeSpecTestList
    -- ,  jqFilterParserTestList
    -- ,  parseDateTimeTestList
    -- ,  greetingTestList
    ]
  return ()
