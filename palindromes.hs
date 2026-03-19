import Data.Char


getMiddle :: String -> String
getMiddle as = take (length (tail as) - 1) (tail as)

checkPalindrome :: String -> Bool
checkPalindrome [] = True
checkPalindrome [a] = True
checkPalindrome as = head as == last as && checkPalindrome (getMiddle as)

isPalindrome :: String -> Bool
isPalindrome as = checkPalindrome (makeAlphaNumeric as)

makeAlphaNumeric :: [Char] -> [Char]
makeAlphaNumeric as = [toUpper x | x<-as, ord(toUpper x) >= 65 && ord(toUpper x) <= 90]