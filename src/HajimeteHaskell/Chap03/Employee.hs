module HajimeteHaskell.Chap03.Employee 
( Employee
) where


 data Employee = NewEmployee { 
     employeeAge :: Integer
   , employeeIsManager :: Bool
   , employeeName :: String
} deriving (Show)

