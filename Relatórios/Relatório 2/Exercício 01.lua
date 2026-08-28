print("Digite o expoente inicial")
local M = tonumber(io.read())
print("Digite o expoente final")
local N = tonumber(io.read())
print("Digite a base")
local BASE = tonumber(io.read())

function gerarTabelaPotencias(inicio, fim, base)
    for i = inicio, fim do
        print(base .. " ^ " .. i .. " = " .. (base^i))
    end
end

gerarTabelaPotencias(M, N, BASE)
