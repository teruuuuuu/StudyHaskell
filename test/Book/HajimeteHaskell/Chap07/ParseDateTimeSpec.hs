{-# LANGUAGE OverloadedStrings #-}
module Book.HajimeteHaskell.Chap07.ParseDateTimeSpec where
import Test.HUnit

import Book.HajimeteHaskell.Chap07.ParseDateTime

parseDateTimeTestList :: Test
parseDateTimeTestList = TestList
  [ 
      "ParseDateTime test 1" ~: parseDateTime "1987/07/23 15:00:00" ~?= Just (YMD 1987 7 23, HMS 15 0 0)
  ]
