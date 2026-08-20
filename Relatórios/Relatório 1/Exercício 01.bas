Dim peso As Single
Dim agua As Single
Dim result As Single

Print "Digite seu peso em kg"
Input peso
Print "Digite a quantidade de agua em ml"
Input agua
result = peso * 35
 
If agua >= result then
    Print "Meta atingida"
Else
    Print "Meta nao atingida"
End if
Sleep
