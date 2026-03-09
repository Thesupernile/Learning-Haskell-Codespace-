import Data.Char (toLower)
getNumInstancesOfChar:: String -> Char -> Int
getNumInstancesOfChar string c = length [x|x<-string, toLower x == toLower c]
