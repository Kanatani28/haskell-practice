main :: IO()
main = do
    l <- getLine

    print (pascal (read l :: Int))

-- pascal :: Int -> [[Int]]
-- pascal 1 =  [[1]]
-- pascal 2 =  [[1], [1, 1]]
-- pascal 3 =  [[1], [1, 1], [1, 2, 1]]
-- pascal 4 =  [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]]
-- pascal 5 =  [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]

pascal :: Int -> [[Int]]
pascal x = map getRow [1..x]

getRow :: Int -> [Int]
getRow 1 = [1]
getRow 2 = [1, 1]
getRow x = firstNum : innerNums ++ [lastNum]
    where
        firstNum = 1
        lastNum = 1
        innerNums = getInners $ getRow (x - 1)

getInners :: [Int] -> [Int]
getInners [x] = []
getInners [x, xs] = [x + xs]
getInners (x:xs:xss) = (x + xs) : getInners (xs:xss)
