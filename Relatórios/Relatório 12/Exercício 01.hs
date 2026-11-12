data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) =
  if leite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let cafe1 = Cafe "Expresso" 8.0 9
  let cafe2 = Cafe "Cafe da Casa" 6.5 6
  let cafe3 = Cafe "Cafe Suave" 7.0 3

  putStrLn (descrever cafe1)
  putStrLn (forca cafe1)
  putStrLn (descrever cafe2)
  putStrLn (forca cafe2)
  putStrLn (descrever cafe3)
  putStrLn (forca cafe3)

  print (precoDoPedido True cafe2)
  print (precoDoPedido False cafe2)
