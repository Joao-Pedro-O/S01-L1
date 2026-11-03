package org.example;

public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Cafe coado", 8.00);
        ItemDoCardapio curry = new ItemDoCardapio("Curry da casa", 25.00);
        ItemDoCardapio combo = new ComboLeblanc("Combo cafe + curry", 30.00);

        CafeLeblanc leblanc = new CafeLeblanc();

        leblanc.adicionar(cafe);
        leblanc.adicionar(curry);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}
