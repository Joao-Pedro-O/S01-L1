package org.example;

public class Main {
    public static void main(String[] args) {
        Alienigena okarun = new Alienigena("Okarun");
        EspiritoYoukai turboVovo = new EspiritoYoukai("Turbo Vovo");

        MapaDeAvistamentos mapaDoBairro = new MapaDeAvistamentos();

        mapaDoBairro.registrar("Escola", okarun);
        mapaDoBairro.registrar("Túnel", turboVovo);

        mapaDoBairro.investigar("Escola");
        mapaDoBairro.investigar("Túnel");
        mapaDoBairro.investigar("Parque");
    }
}
