getFactors :: Int->[Int]
getFactors num = [x | x<-[1..num-1], mod num x == 0]

isPerfect :: Int->Bool
isPerfect num = num == sum (getFactors num)

getPerfects:: Int->[Int]
getPerfects num = [x | x<-[1..num], isPerfect x]