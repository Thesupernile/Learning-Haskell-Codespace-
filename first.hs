double x = x + x
doubleSum x y = double x + double y
factorial x = product[1..x]
mean xs = sum xs `div` length xs

myLast xs = head (drop (length xs - 1) xs)
myLast2 xs = xs !! max 0 (length xs - 1)

second :: [a]->a
second xs = xs !! 1


palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs
