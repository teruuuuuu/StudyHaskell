{-# LANGUAGE OverloadedStrings #-}
module Book.BasicOfFp.Chap01.CoordSpec
(
    coordTestList
) where
import Test.HUnit
import Data.Fixed
import Book.BasicOfFp.Chap01.Coord


t2kirisute :: (Double, Double) -> (Int, Int)
t2kirisute (a, b) = (floor　$ 1000000 * a, floor　$ 1000000 * b )

config = Config { rotAt = (0.5, 0.5), theta = pi / 4, ofs = (-0.5, -0.5)}
unitRect = [(0, 0), (0, 1), (1, 1), (1, 0)]
convertedRect = map (converterByConfig config) unitRect

convertedRect2 = fmap t2kirisute convertedRect

coordTestList :: Test
coordTestList = TestList
  [ 
       "coordTest test 1" ~: unitRect ~?= [(0, 0), (0, 1), (1, 1), (1, 0)]
       , "coordTest test 2" ~: convertedRect2 ~?= [(-1, -707107), (-707107, 0), (0, 707106), (707106, -1)]
  ]
