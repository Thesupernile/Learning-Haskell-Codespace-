euclidAlg :: Int -> Int -> Int
euclidAlg x 0 = x
euclidAlg x y = euclidAlg y (mod x y)
