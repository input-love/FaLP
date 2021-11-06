substitute:: Char -> Char -> String -> String
substitute _ _ [] = []
substitute s r word | head word == s = r : substitute s r (tail word)
                    | otherwise = head word : substitute s r (tail word)