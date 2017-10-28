{-# LANGUAGE OverloadedStrings #-}
module Main where
import Test.HUnit

import Try.TFoldSpec

main :: IO ()
main = do
  runTestTT $ TestList
    [ 
        "spec test 1" ~: 1 + 1 ~?= 2
     ,  tFoldTestList
    ]
  return ()
