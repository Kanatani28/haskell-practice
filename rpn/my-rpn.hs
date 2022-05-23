main::IO()

main = do
    -- let input = "10 4 3 + 2 * -"
    let input = "10 4 3 - 2 * -"
    let items = words input
    print $ calculate [] items
    

calculate :: [String] -> [String] -> Int

calculate stack (y:ys)
  | isOperator y = calculate newStack ys 
  | otherwise = calculate (stack ++ y : []) ys
  where 
    newStack = (init $ init stack) ++ ((show $ calc y $ toComputable $ takeLast 2 stack) : [])
calculate [x] [] = read x

takeLast :: Int -> [a] -> [a]
takeLast n x = reverse $ take n $ reverse x 

toComputable :: [String] -> (Int, Int)
toComputable [x, y] = (read x,  read y)
-- toComputable _ = (0, 0)

isOperator :: String -> Bool
isOperator "+" = True
isOperator "-" = True
isOperator "*" = True
isOperator "/" = True
isOperator _ = False

calc :: String -> (Int, Int) -> Int
calc "+" (x, y) = x + y
calc "-" (x, y) = x - y
calc "*" (x, y) = x * y
-- calc "/" (x, y) = x / y
calc _ _= 0

