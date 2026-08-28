print("Digite a quantidade de elementos")
local N = tonumber(io.read())
local tabela = {}
local j = 0

for i = 1, N do
    print("Digite o elemento " .. i)
    tabela[i] = tonumber(io.read())
end

print("Digite o número X a ser buscado")
local X = tonumber(io.read())

function contarOcorrencias(tabela, alvo)
    for i = 1, #tabela do
        if tabela[i] == alvo then
            j = j + 1
        end
    end
    print("O número " .. X .. " aparece " .. j .. " vez(es) na tabela. ")
end

contarOcorrencias(tabela, X)
