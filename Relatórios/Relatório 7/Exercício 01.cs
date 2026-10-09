using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        Nome = nome;
        Povo = povo;
        Posto = posto;
    }

    public void Equipar(string arma)
    {
        Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine("Nome: " + Nome);
        Console.WriteLine("Povo: " + Povo);
        Console.WriteLine("Posto: " + Posto);

        if (Armamento != "Desarmado")
        {
            Console.WriteLine("Armamento: " + Armamento);
        }
        Console.WriteLine();
    }
}

class Program
{
    static void Main()
    {
        CombatenteDeGondor c1 = new CombatenteDeGondor("Frodo", "Hobbits", "Capitão");
        CombatenteDeGondor c2 = new CombatenteDeGondor("Aragorn", "Gondorianos", "Guerreiro");
        CombatenteDeGondor c3 = new CombatenteDeGondor("Legolas", "Elfos", "Artilharia");

        c2.Equipar("Espada");
        c3.Equipar("Arco");

        c1.ApresentarUnidade();
        c2.ApresentarUnidade();
        c3.ApresentarUnidade();

        // Erro: o set de Posto e private, entao nao pode ser alterado fora da classe
        // c1.Posto = "Protagonista";
    }
}
