main :: IO ()
main = do
  putStr "Ex1: [\"flower\",\"flow\",\"flight\"] is "
  print (longestCommonPrefix ["flower", "flow", "flight"])
  putStr "Ex2: [\"dog\",\"racecar\",\"car\"] is "
  print (longestCommonPrefix ["dog", "racecar", "car"])

longestCommonPrefix :: [String] -> String
longestCommonPrefix [] = ""
longestCommonPrefix [x] = x
longestCommonPrefix x = foldr1 prefix x
-- 通常のfoldrを使う場合は明示的に先頭要素を指定する必要あり
-- longestCommonPrefix (x : xs) = foldr prefix x xs

prefix :: String -> String -> String
prefix x [] = ""
prefix [] y = ""
prefix (x : xs) (y : ys)
  | x == y = x : prefix xs ys
  | otherwise = ""
