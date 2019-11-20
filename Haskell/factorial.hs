module Main where
--function for factorial in haskell
factorial n = if n == 0 then 1 else n * factorial (n - 1)
--if stdin is 120, right; else false
main = do putStrLn "What is 5! ?"
          x <- readLn
          if x == factorial 5
              then putStrLn "Right!"
              else putStrLn "Wrong!"