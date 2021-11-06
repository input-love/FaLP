firstzero:: [Integer] -> String
firstzero x = if x!!0 == 0 then "First" else (if x!!1 == 0 then "Second" else (if x!!2 == 0 then "Third" else "NON"))