substitute:: Char -> Char -> String -> String
substitute _ _ [] = []
substitute s r word = if head word == s then r : substitute s r (tail word)
                else head word : substitute s r (tail word)