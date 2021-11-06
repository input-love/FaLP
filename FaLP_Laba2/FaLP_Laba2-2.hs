substitute:: Char -> Char -> String -> String
substitute _ _ [] = []
substitute s r (word_head:word_tail) = if word_head == s then r : substitute s r word_tail
                else word_head : substitute s r word_tail