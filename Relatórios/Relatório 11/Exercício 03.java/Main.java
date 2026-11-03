package org.example;

public class Main {
    public static void main(String[] args) {
        Alienigena alienigena = new Alienigena("Okarun");
        EspiritoYoukai espirito = new EspiritoYoukai("Turbo Vovo");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Escola", alienigena);
        mapa.registrar("Tunel", espirito);

        mapa.investigar("Escola");
        mapa.investigar("Tunel");
        mapa.investigar("Parque");
    }
}
