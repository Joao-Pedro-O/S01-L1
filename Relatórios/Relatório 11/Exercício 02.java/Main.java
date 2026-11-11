package org.example;

public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafeCoado = new ItemDoCardapio("Café coado", 8.00);
        ItemDoCardapio curryDaCasa = new ItemDoCardapio("Curry da casa", 25.00);
        ItemDoCardapio comboCafeCurry = new ComboLeblanc("Combo café + curry", 30.00);

        CafeLeblanc cafeteria = new CafeLeblanc();

        cafeteria.adicionar(cafeCoado);
        cafeteria.adicionar(curryDaCasa);
        cafeteria.adicionar(comboCafeCurry);

        cafeteria.mostrarCardapio();
    }
}
