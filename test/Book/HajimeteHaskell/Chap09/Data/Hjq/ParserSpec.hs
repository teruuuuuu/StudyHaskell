{-# LANGUAGE OverloadedStrings #-}
module Book.HajimeteHaskell.Chap09.Data.Hjq.ParserSpec where
import Test.HUnit

import Book.HajimeteHaskell.Chap09.Data.Hjq.Parser 

jqFilterParserTestList :: Test
jqFilterParserTestList = TestList [
  "jqFitlterParser test 1" ~: parseJqFilter "." ~?= Right JqNil 
-- , "jqFitlterParser test 2" ~: parseJqFilter ".[0]" ~? = Right (JqIndex 0 JqNill) -- [0]が来たらJqIndex 0 JqNil
-- , "jqFitlterParser test 3" ~: parseJqFilter ".fieldName" ~? = Right (JqField "fieldName" JqNil) -- .が来たらJqNill
-- , "jqFitlterParser test 4" ~: parseJqFilter ".[0].fieldName" ~? = Right (JqIndex 0 (JqFiled "fieldName" JqNill))
-- , "jqFitlterParser test 5" ~: parseJqFilter ".fieldName[0]" ~? = Right (JqFiled "fieldName" (JqIndex 0 JqNill)) 
  ]
