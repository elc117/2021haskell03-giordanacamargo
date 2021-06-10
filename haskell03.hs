-- Nome: Giordana Camilla Camargo

-- 1 - Usando list comprehension, defina uma função add10toall :: [Int] -> [Int], que receba uma lista e adicione o valor 10 a cada elemento dessa lista, produzindo outra lista.

add10toall :: [Int] -> [Int]
add10toall y = [ x + 10 | x <- y]


-- 2 - Usando list comprehension, defina uma função multN :: Int -> [Int] -> [Int], que receba um número N e uma lista, e multiplique cada elemento da lista por N, produzindo outra lista.

multN ::  Int -> [Int] -> [Int]
multN t y = [x*t | x <- y]

-- 3 - Usando a função de alta ordem map, defina a função multN' :: Int -> [Int] -> [Int], equivalente à função do exercício anterior.

multN' :: Int -> [Int] -> [Int]
multN' y x = map (\x -> x*y) x


-- 4 - Usando list comprehension, defina uma função applyExpr :: [Int] -> [Int], que receba uma lista e calcule 3*x+2 para cada elemento x da lista, produzindo outra lista.

applyExpr :: [Int] -> [Int]
applyExpr y = [3*x+2 | x <- y]

-- 5 - Reescreva a função do exercício anterior usando lambda e uma função de alta ordem. A assinatura da função será applyExpr' :: [Int] -> [Int].

applyExpr' :: [Int] -> [Int]
applyExpr' x = map (\x -> 3*x+2) x

-- 6 - Usando list comprehension, escreva uma função addSuffix :: String -> [String] -> [String] , para adicionar um dado sufixo às strings contidas numa lista. 

addSuffix :: String -> [String] -> [String]
addSuffix suf palavra = [x++suf | x<- palavra]


-- 7 - Usando list comprehension, defina uma função selectgt5 :: [Int] -> [Int], que receba uma lista e selecione somente os valores maiores que 5, produzindo outra lista.

selectgt5 :: [Int] -> [Int]
selectgt5 x = [x | x<-x , x>5]

-- 8 - Usando list comprehension, defina uma função sumOdds :: [Int] -> Int, que receba uma lista e obtenha o somatório dos valores ímpares, produzindo outra lista. Para auxiliar nesta função, você deverá pesquisar funções pré-definidas em Haskell.

--sumOdds :: [Int] -> Int
--sumOdds y = foldl (\x y -> odd x) [y]

-- 9 - Resolva a questão anterior sem usar list comprehension, criando a função sumOdds' :: [Int] -> Int.

-- 10 - Usando list comprehension, defina uma função selectExpr :: [Int] -> [Int], que receba uma lista e selecione somente os valores pares entre 20 e 50, inclusive, produzindo outra lista.

selectExpr :: [Int] -> [Int]
selectExpr y = [x | x <- y, even x, x>= 20, x<=50]
