{-# LANGUAGE OverloadedStrings #-}
module Book.HajimeteHaskell.Chap03.EmployeeSpec where
import Test.HUnit

import Book.HajimeteHaskell.Chap03.Employee


employee :: Employee
employee = NewEmployee { employeeName      = "Subhash Khot"
                       , employeeAge       = 39
                       , employeeIsManager = False
                       }
employee' :: Employee
employee' = employee { employeeIsManager = True
                     , employeeAge = employeeAge employee + 1
                     }

employeeTestList :: Test
employeeTestList = TestList
  [ 
    "employee test 1" ~: employeeAge employee ~?= 39
  , "employee test 2" ~: employeeIsManager employee ~?= False
  , "greeTing test 3" ~: employeeName employee ~?= "Subhash Khot"
  , "greeTing test 5" ~: employeeAge employee' ~?= 40
  ]

