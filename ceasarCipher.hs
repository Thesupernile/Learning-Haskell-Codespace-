import Data.Char

encryptLetter :: Char -> Int -> Char
encryptLetter plainLetter shift
                | (ord plainLetter >= 65) && (ord plainLetter <= 90) = chr (mod ((ord plainLetter - 65) + shift) 25 + 65)
                | (ord plainLetter >= 97) && (ord plainLetter <= 122) = chr (mod ((ord plainLetter - 97) + shift) 25 + 97)

encryptC :: String -> Int -> String
encryptC plainText shift = [encryptLetter x shift | x<-plainText, (ord x >= 65 && ord x <= 90) || (ord x >= 97 && ord x <= 122)];

decryptC :: String -> Int -> String
decryptC cipherText shift = [encryptLetter x (-shift) | x<-cipherText, (ord x >= 65 && ord x <= 90) || (ord x >= 97 && ord x <= 122)];

--encryptV :: String -> String -> String
--encryptV plaintext keyText = [encryptLetter x (ord (toUpper shift) - 64) | x<-plaintext, (ord x >= 65 && ord x <= 90) || (ord x >= 97 && ord x <= 122), shift<-keyText]
--encryptV plaintext keyText = zipWith(encryptLetter) [x | x<-plaintext, (ord x >= 65 && ord x <= 90) || (ord x >= 97 && ord x <= 122)] keyText

