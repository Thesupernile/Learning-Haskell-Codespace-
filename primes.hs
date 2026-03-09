getFactors :: Int->[Int]
getFactors num = [x | x<-[2..num-1], mod num x == 0]

isPrime :: Int->Bool
isPrime num = length (getFactors num) == 0

getAllPrimesTo :: Int->[Int]
getAllPrimesTo num = [x | x<-[2..num], isPrime x]
