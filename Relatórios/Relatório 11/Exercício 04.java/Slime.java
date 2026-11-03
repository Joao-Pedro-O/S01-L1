package org.example;

public class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "frito com alho e ervas.";
    }
}
