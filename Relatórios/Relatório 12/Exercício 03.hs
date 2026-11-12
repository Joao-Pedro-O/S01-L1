data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno está vazio"
esbocoMaisRecente (e:_) = titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos []         = 0
contarEsbocos (_:resto)  = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando []        = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno =
        [ Esboco "Ruinas ao entardecer" "grafite" 5
        , Esboco "Criatura das cavernas" "nanquim" 8
        , Esboco "Floresta sombria" "carvao" 3
        ]

  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)
  print (horasDesenhando caderno)

  putStrLn (esbocoMaisRecente [])

  let novoEsboco = Esboco "Torre abandonada" "nanquim" 6
  let cadernoNovo = novoEsboco : caderno

  putStrLn "Caderno novo:"
  putStrLn (esbocoMaisRecente cadernoNovo)
  print (contarEsbocos cadernoNovo)

  putStrLn "Caderno anterior:"
  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)

  -- Passo 7: tirar o -- da linha abaixo causa erro ao executar
  -- putStrLn (titulo (head ([] :: [Esboco])))
