main::IO () 
main = do
    putStr "Enter numbers:"        
    x1 <-readLn::IO Integer         
    x2 <-readLn::IO Integer          
    x3 <-readLn::IO Integer

    writeFile "result.txt" (firstzero [x1, x2, x3])

firstzero:: [Integer] -> String
firstzero x | head x == 0 = "First"
            | x!!1 == 0 = "Second"
            | x!!2 == 0 = "Third"
            | otherwise = "NON"