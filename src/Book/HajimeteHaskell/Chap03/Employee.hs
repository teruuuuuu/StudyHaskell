module Book.HajimeteHaskell.Chap03.Employee where


data Employee = NewEmployee { 
     employeeAge :: Integer
   , employeeIsManager :: Bool
   , employeeName :: String
} deriving (Show)


-- main :: IO ()
-- main = do
--   print $ employeeAge employee
--   print $ employeeIsManager employee
--   print $ employeeName employee

--   print $ employeeAge employee'
--   print $ employeeIsManager employee'
--   print $ employeeName employee'
--   where 
--     employee :: Employee
--     employee = NewEmployee { employeeName      = "Subhash Khot"
--                            , employeeAge       = 39
--                            , employeeIsManager = False
--                            }
--     employee' :: Employee
--     employee' = employee { employeeIsManager = True
--                          , employeeAge = employeeAge employee + 1
--                          }