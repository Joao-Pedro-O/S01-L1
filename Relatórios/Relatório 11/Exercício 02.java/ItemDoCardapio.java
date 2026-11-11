package org.example;

public class ItemDoCardapio {
    private String nomeItem;
    private double valor;

    public ItemDoCardapio(String nome, double preco) {
        this.nomeItem = nome;
        this.valor = preco;
    }

    public String getNome() {
        return nomeItem;
    }

    public double getPreco() {
        return valor;
    }

    // Item comum: o preço final é o próprio preço, sem desconto
    public double precoFinal() {
        return valor;
    }
}
