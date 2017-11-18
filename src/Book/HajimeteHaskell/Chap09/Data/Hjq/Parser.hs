{-# LANGUAGE OverloadedStrings #-}
module Book.HajimeteHaskell.Chap09.Data.Hjq.Parser where

import Data.Text as T

data JqFilter
  = JqField Text JqFilter
  | JqIndex Int JqFilter
  | JqNil
  deriving (Show, Read, Eq)


parseJqFilter :: Text -> Either Text JqFilter
parseJqFilter _ = Right JqNil
-- parseJqFilter s = showParseResult
--   $ parse (jqFilterParser <* endOfInput) s `feed` ""

-- jqFilterParser :: Parser JqFilter
-- jqFilterParser = char '.' >> (jqField <|> jqIndex <|> pure JqNil)
--   where
--     jqFilter :: Parser JqFilter
--     jqFilter
--       = (char '.' >> jqField) <|> jqIndex <|> pure JqNil
--     jqField :: Parser JqFilter
--     jqField = JqField <$> (word <* skipSpace) <*> jqFilter
--     jqIndex :: Parser JqFilter
--     jqIndex = JqIndex <$> (char '[' *> decimal <* char ']') <*> jqFilter

-- showParseResult :: Show a => Result a -> Either Text a
-- showParseResult (Done _ r) = Right r
-- showParseResult r = Left . pack $ show r

-- word :: Parser Text
-- word = fmap pack $ many1 (letter <|> char '-' <|> char '_' <|> digit)
