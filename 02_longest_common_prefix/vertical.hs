main :: IO ()
main = do
  putStr "Ex1: [\"flower\",\"flow\",\"flight\"] is "
  print (longestCommonPrefix ["flower", "flow", "flight"])
  putStr "Ex2: [\"dog\",\"racecar\",\"car\"] is "
  print (longestCommonPrefix ["dog", "racecar", "car"])

longestCommonPrefix :: [String] -> String
longestCommonPrefix [] = ""
longestCommonPrefix [x] = x
longestCommonPrefix (x:xs) = prefix x xs

prefix :: String -> [String] -> String
prefix [] _ = ""
prefix (x : xs) y
    | all (headCompare x) y = x : prefix xs (map tail y)
    | otherwise = ""
  where
      headCompare _ [] = False
      headCompare xFst (z:_) = xFst == z
