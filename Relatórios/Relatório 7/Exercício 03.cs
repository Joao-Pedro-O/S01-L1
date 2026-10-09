using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine("Feitico favorito do grimorio: " + FeiticoFavorito);
    }
}

class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        Nome = nome;
        Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine(Nome + " - " + Funcao);
    }
}

class Maga
{
    public string Nome { get; set; }
    public Grimorio Grimorio { get; private set; }
    private List<Companheiro> companheiros = new List<Companheiro>();

    public Maga(string nome)
    {
        Nome = nome;
        Grimorio = new Grimorio(); // criado dentro do construtor
    }

    public void Recrutar(Companheiro c)
    {
        companheiros.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine("Grupo de " + Nome + ":");
        foreach (Companheiro c in companheiros)
        {
            c.Apresentar();
        }
    }
}

class Program
{
    static void Main()
    {
        // Companheiros criados antes da Maga (agregacao)
        Companheiro himmel = new Companheiro("Himmel", "Heroi");
        Companheiro fern = new Companheiro("Fern", "Aprendiz de magia");

		// O Grimorio e criado dentro do construtor da Maga (composicao)
        Maga frieren = new Maga("Frieren");

        frieren.Recrutar(himmel);
        frieren.Recrutar(fern);

        frieren.Grimorio.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        frieren.Grimorio.Abrir();

        // Composicao: o Grimorio e criado dentro da Maga. Sem a Maga, ele nao existe.
    	// Agregacao: os Companheiros sao criados fora da Maga. Existem sem ela.
    }
}
