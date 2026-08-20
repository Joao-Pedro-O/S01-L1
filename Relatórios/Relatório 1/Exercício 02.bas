Dim PINFIXO As integer
Dim PINACESSO As integer

PINFIXO = 4321
Print "Digite o PIN"
input PINACESSO
While PINACESSO <> PINFIXO
    Print "PIN invalido. Tente novamente."
    Input PINACESSO
Wend
Print "Transacao autorizada!"
Sleep
