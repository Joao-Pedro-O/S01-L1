package org.example;

public class Main {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime Azul");
        Mandragora mandragora = new Mandragora("Mandragora Gigante");

        Cozinheiro cozinheiro = new Cozinheiro("Senshi", "ferro");

        cozinheiro.adicionarIngrediente(slime);
        cozinheiro.adicionarIngrediente(mandragora);

        cozinheiro.servirBanquete();
    }
}
