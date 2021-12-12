main :: IO ()
main = do
  putStr "Ex1:  121 is "
  print (isPalindrome 121)
  putStr "Ex2:  -121 is "
  print (isPalindrome (-121))
  putStr "Ex3:  10 is "
  print (isPalindrome 10)
  putStr "Ex4:  -101 is "
  print (isPalindrome (-101))
  putStr ("Min:  " ++ show (-2 ^ 31) ++ " is ")
  print (isPalindrome ((-2) ^ 31))
  putStr ("Max: " ++ show ((-2) ^ 31 - 1) ++ " is ")
  print (isPalindrome (2 ^ 31 - 1))

isPalindrome :: Int -> Bool
isPalindrome x = reversed == xStr
  where
    xStr = show x
    reversed = reverse xStr