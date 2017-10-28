module HajimeteHaskell.Chap02.FizzBuzz 
  ( fizuBuzzLoop
  , fizzBuzzFoldFunc
  , fizzBuzzFoM
  ) where
import Control.Monad 
  ( when
  , forM_
  )


fizuBuzzLoop :: IO ()
fizuBuzzLoop = loop 0
  where
    loop n | n <= 20   = do
               when (n `mod` 3 /= 0 && n `mod` 5 /= 0) (putStr $ show n)
               when (n `mod` 3 == 0) (putStr "Fizz")
               when (n `mod` 5 == 0) (putStr "Buzz")
               putStrLn ""
               loop (n + 1)
           | otherwise = return ()

fizzBuzzFoldFunc :: IO ()
fizzBuzzFoldFunc = foldr f (return ()) $ map fizzbuzz [1 .. 15]
  where
    fizzbuzz n | n `mod` 15 == 0 = "FizzBuzz"
               | n `mod` 3  == 0 = "Fizz"
               | n `mod` 5  == 0 = "Buzz"
               | otherwise       = show n
    f str act = do 
      putStrLn str
      act

fizzBuzzFoM :: IO ()
fizzBuzzFoM = do
  forM_ [1..20] $ \i -> do
    putStrLn (fizzbuzz i)
  where
    fizzbuzz n | n `mod` 15 == 0 = "FizzBuzz"
               | n `mod` 3  == 0 = "Fizz"
               | n `mod` 5  == 0 = "Buzz"
               | otherwise       = show n

               