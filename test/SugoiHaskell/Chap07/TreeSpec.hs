{-# LANGUAGE OverloadedStrings #-}
module SugoiHaskell.Chap07.TreeSpec where
import Test.HUnit


import SugoiHaskell.Chap07.Tree


treeSpecTestList :: Test
treeSpecTestList = TestList
  [ 
      "TreeSpec test 1" ~: 8 `treeElem` numsTree ~?= True
    , "TreeSpec test 2" ~: 100 `treeElem` numsTree ~?= False

  ]


  