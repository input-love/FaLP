substitute:: [Integer]-> [Integer]
substitute x = if length(x) == 9 then []
        else substitute(head(x) * head(x): x)
    