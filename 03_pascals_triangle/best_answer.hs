main :: IO ()
main = do
  n <- getLine
  print . take (parseInt n) $ pascalTriangle

parseInt :: String -> Int
parseInt n = read n :: Int

pascalTriangle :: [[Integer]]
-- 無限リストを使って実装されている？Haskellならでは
pascalTriangle = [1] : [zipWith (+) (0:t) (t++[0]) | t <- pascalTriangle]
