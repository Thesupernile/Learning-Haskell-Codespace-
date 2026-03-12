
absolute :: (Ord a, Num a) => a -> a
absolute num = if num>0 then num else -num

absolute2 :: (Ord a, Num a) => a -> a
absolute2 num 
            | num > 0 = num
            | otherwise = -num

getTail::[a]->[a]
getTail [] = []
getTail (_:xs) = xs