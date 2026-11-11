package org.example;

public abstract class Morador {
    private String nomeMorador;

    public Morador(String nome) {
        this.nomeMorador = nome;
    }

    public String getNome() {
        return nomeMorador;
    }

    // Cada tipo de morador define como se apresenta
    public abstract void apresentar();
}
