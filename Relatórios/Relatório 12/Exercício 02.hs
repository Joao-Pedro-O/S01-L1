pesoMaximo :: Double
pesoMaximo = 10.0

-- pesoMaximo = 15.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - " ++ show (peso e) ++ " kg - frete " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura lista = filter (\e -> peso e <= pesoMaximo) lista

totalDeFretes :: [Encomenda] -> Double
totalDeFretes lista = sum (map frete lista)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda "Padaria da Osono" 2.5 15.0
        , Encomenda "Tombo" 4.0 20.0
        , Encomenda "Senhora do Bolo" 12.0 40.0
        , Encomenda "Ursula" 10.0 25.0
        , Encomenda "Pintora" 15.5 50.0
        ]

  putStrLn "Todas:"
  mapM_ putStrLn (map descrever encomendas)

  putStrLn "Cabem na vassoura:"
  mapM_ putStrLn (map descrever (cabemNaVassoura encomendas))

  putStrLn "Total de fretes:"
  print (totalDeFretes (cabemNaVassoura encomendas))
