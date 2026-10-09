using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine("A entidade " + Nome + " se manifesta.");
        if (Origem != "Desconhecida")
        {
            Console.WriteLine("Origem: " + Origem);
        }
    }
}

class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine("O Profundo " + Nome + " emerge das aguas escuras!");
    }
}

class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine("O Mi-Go " + Nome + " observa tudo com suas asas membranosas.");
    }
}

class Pesquisador
{
    public string Nome { get; set; }
    private List<EntidadeCosmica> catalogo = new List<EntidadeCosmica>();

    public Pesquisador(string nome)
    {
        Nome = nome;
    }

    public void Catalogar(EntidadeCosmica e)
    {
        catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine("Catalogo de " + Nome + ":");
        foreach (EntidadeCosmica e in catalogo)
        {
            e.Manifestar();
            Console.WriteLine();
        }
    }
}

class Program
{
    static void Main()
    {
        EntidadeCosmica generica = new EntidadeCosmica("Cthulhu");
        Profundo profundo = new Profundo("Dagon");
        MiGo migo = new MiGo("Fungo de Yuggoth");

        generica.Origem = "R'lyeh";
        migo.Origem = "Yuggoth";

        Pesquisador pesquisador = new Pesquisador("Dr. Armitage");
        pesquisador.Catalogar(generica);
        pesquisador.Catalogar(profundo);
        pesquisador.Catalogar(migo);

        pesquisador.LerCatalogo();
    }
}
