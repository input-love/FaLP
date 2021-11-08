data Product = Product String String String deriving (Show, Eq)
data PriceList = PriceList [(Product, Int)] deriving (Show, Eq)

--let prList = PriceList [(Product "Pukizi" "ZenBook" "Asus", 1337), (Product "TemaYshkinnn" "NoteBook" "Acer", 228), (Product "Putin" "NoteBook" "Acer", 322)]

getName:: (Product, Int) -> String
getName (Product name _ _,  _) = name

getCompany:: (Product, Int) -> String
getCompany (Product _ _ company,  _) = company

getPrice:: (Product, Int) -> Int
getPrice (_, price) = price 


lookupCopany:: PriceList -> [String]
lookupCopany (PriceList x)  | (x == []) = []
                            | otherwise = getName(head x): lookupCopany(PriceList (tail x))

productsByName:: PriceList -> String -> PriceList
productsByName (PriceList x) name = PriceList [elem | elem<-x, getName elem == name]

productsByPrice:: PriceList -> Int -> PriceList
productsByPrice (PriceList x) price = PriceList [elem | elem<-x, getPrice elem <= price]

eraseByName:: PriceList -> String -> PriceList
eraseByName (PriceList x) name = PriceList [elem | elem<-x, getName elem /= name]