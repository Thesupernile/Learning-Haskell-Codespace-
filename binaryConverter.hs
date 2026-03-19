import Data.Char

-- Convert an integer into binary
inttobin :: Int -> [Int]
inttobin 0 = [0]
inttobin 1 = [1]
inttobin n = inttobin (div n 2) ++ [mod n 2]

-- Convert a character to an int
chartoint :: Char -> Int
chartoint x = ord x - 48

-- Convert a character to binary
chartobin :: Char -> [Int]
chartobin = inttobin.chartoint

-- Convert a string to binary
stringtobin :: [Char] -> [[Int]]
stringtobin [] = []
stringtobin xs = map chartobin xs
