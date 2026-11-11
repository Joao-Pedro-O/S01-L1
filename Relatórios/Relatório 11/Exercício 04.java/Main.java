package org.example;

public class Main {
    public static void main(String[] args) {
        Slime slimeAzul = new Slime("Slime Azul");
        Mandragora mandragoraGigante = new Mandragora("Mandrágora Gigante");

        Cozinheiro senshi = new Cozinheiro("Senshi", "ferro");

        senshi.adicionarIngrediente(slimeAzul);
        senshi.adicionarIngrediente(mandragoraGigante);

        senshi.servirBanquete();
    }
}
