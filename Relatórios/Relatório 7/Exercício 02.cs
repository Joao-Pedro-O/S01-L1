using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        Especie = especie;
        Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine(Especie + " (nivel " + Nivel + ") usa Tackle!");
    }
}

class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        Console.WriteLine(Especie + " (nivel " + Nivel + ") usa Absorb!");
    }
}

class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine(Especie + " solta uma descarga eletrica!");
    }
}

class Program
{
    static void Main()
    {
        List<Pokemon> pokemons = new List<Pokemon>();

        pokemons.Add(new Pokemon("Eevee", 12));
        pokemons.Add(new TipoPlanta("Bulbasaur", 15));
        pokemons.Add(new TipoEletrico("Pikachu", 28));

        foreach (Pokemon p in pokemons)
        {
            p.Atacar();
        }
    }
}
