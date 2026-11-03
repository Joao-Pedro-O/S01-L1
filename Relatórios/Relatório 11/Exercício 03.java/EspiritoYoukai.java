package org.example;

public class EspiritoYoukai implements Sobrenatural {
    private String nome;
    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " surgiu em meio a uma nevoa misteriosa!");
    }
}
