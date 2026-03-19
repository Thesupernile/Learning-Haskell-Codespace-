import Data.Char
import Control.Concurrent.STM (check)

checkDigit :: Char -> Bool
checkDigit x
        | ord x >= 48 && ord x <= 57 = True
        | otherwise = False

isCharDigit :: String -> [Bool]
isCharDigit xs = map checkDigit xs

getDigits :: [Char] -> [Char]
getDigits xs = [x | x<-xs, checkDigit x]

outputOnlyDigits :: [Char] -> [Char]
outputOnlyDigits xs = filter checkDigit xs
