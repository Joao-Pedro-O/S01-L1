data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever a =
  cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado lista = sum (map valor (filter (\a -> etapa a == Concluido) lista))

main :: IO ()
main = do
  let a1 = Atendimento "Sem-Rosto" "Banho de ervas" 50.0 NaFila
  let a2 = Atendimento "Deus do Rio" "Banho de lama" 120.0 NoBanho
  let a3 = Atendimento "Oshira-sama" "Banho simples" 30.0 NaFila

  let lista1 = [a1, a2, a3]
  let lista2 = [concluir a1, a2, concluir a3]

  putStrLn "Lista original:"
  mapM_ putStrLn (map descrever lista1)
  print (arrecadado lista1)

  putStrLn "Lista nova:"
  mapM_ putStrLn (map descrever lista2)
  print (arrecadado lista2)
