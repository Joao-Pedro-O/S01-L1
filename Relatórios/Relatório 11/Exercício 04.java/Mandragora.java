package org.example;

public class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "assada no forno junto com legumes.";
    }
}
