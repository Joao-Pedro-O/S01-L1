package org.example;

public class ComboLeblanc extends ItemDoCardapio {
    private static final double DESCONTO = 0.10;

    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }

    @Override
    public double precoFinal() {
        double valorOriginal = getPreco();
        double valorComDesconto =
