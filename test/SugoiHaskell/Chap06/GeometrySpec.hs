{-# LANGUAGE OverloadedStrings #-}
module SugoiHaskell.Chap06.GeometrySpec where
import Test.HUnit


import SugoiHaskell.Chap06.Geometry


geometrySpecTestList :: Test
geometrySpecTestList = TestList
  [ 
      "GeometrySpec test 1" ~: sphereVolume 3 ~?= 113.097336
    , "GeometrySpec test 2" ~: sphereVolume 3 ~?= 36 * pi
    , "GeometrySpec test 3" ~: sphereArea 2 ~?= 16 * pi
    , "GeometrySpec test 4" ~: cubeVolume 5 ~?= 125
    , "GeometrySpec test 5" ~: cuboidArea 3  7 5 ~?= 142
    
    
  ]
