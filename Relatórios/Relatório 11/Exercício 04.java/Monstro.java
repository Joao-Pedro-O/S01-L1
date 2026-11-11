package org.example;

public abstract class Monstro {
    private String nomeMonstro;

    public Monstro(String nome) {
        this.nomeMonstro = nome;
    }

    public String getNome() {
        return nomeMonstro;
    }

    // Cada monstro define como vira prato
    public abstract String receita();
}
