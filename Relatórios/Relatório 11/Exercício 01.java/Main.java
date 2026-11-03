package org.example;

public class Main {
    public static void main(String[] args) {
        Morador mago = new Mago("Howl", "magia das estrelas");
        Morador demonio = new DemonioDoFogo("Calcifer");

        mago.apresentar();
        demonio.apresentar();

        // Morador morador = new Morador("Morador");
    }
}
