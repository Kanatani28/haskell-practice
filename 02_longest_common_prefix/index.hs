main :: IO ()
main = do
  putStr "Ex1: [\"flower\",\"flow\",\"flight\"] is "
  print (longestCommonPrefix ["flower", "flow", "flight"])
  putStr "Ex2: [\"dog\",\"racecar\",\"car\"] is "
  print (longestCommonPrefix ["dog", "racer", "car"])

longestCommonPrefix :: [String] -> String
longestCommonPrefix [] = ""
longestCommonPrefix [x] = x
longestCommonPrefix (x : xs) = foldr1 prefix xs

prefix :: String -> String -> String
prefix x [] = ""
prefix [] y = ""
prefix (x : xs) (y : ys)
  | x == y = x : prefix xs ys
  | otherwise = ""
