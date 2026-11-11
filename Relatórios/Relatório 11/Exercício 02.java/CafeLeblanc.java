package org.example;
import java.util.ArrayList;

public class CafeLeblanc {
    private ArrayList<ItemDoCardapio> itens;

    public CafeLeblanc() {
        itens = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio novoItem) {
        itens.add(novoItem);
    }

    public void mostrarCardapio() {
        System.out.println("Cardápio do Café Leblanc:");
        for (ItemDoCardapio atual : itens) {
            double preco = atual.precoFinal();
            System.out.printf("%s - R$ %.2f%n", atual.getNome(), preco);
        }
    }
}
