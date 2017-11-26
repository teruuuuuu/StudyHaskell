{-# LANGUAGE OverloadedStrings #-}
module Book.HajimeteHaskell.Chap05.Hajimete05Spec where
import Test.HUnit

import Book.HajimeteHaskell.Chap05.Hajimete05



sampleMenu :: Menu
sampleMenu = [ 
    ("Foods",
    [ ("Hamburger",120)
    , ("FrenchFries", 100)
    ] )
   ,("Drinks",
    [ ("Cola", 80)
    , ("Tea", 100)
    ] )
  ]

hajimete05TestList :: Test
hajimete05TestList = TestList
  [ 
    "hajimete05Test test 1" ~: getItemWithM sampleMenu "Foods" "Hamburger"  ~?= Just ("Foods", "Hamburger", 120)
  , "hajimete05Test test 2" ~: getItemWithM sampleMenu "Foods" "aaaaaa"  ~?= Nothing
  ]
