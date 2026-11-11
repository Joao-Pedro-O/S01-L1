package org.example;

public class Main {
    public static void main(String[] args) {
        Morador howl = new Mago("Howl", "magia das estrelas");
        Morador calcifer = new DemonioDoFogo("Calcifer");

        System.out.println("Moradores do castelo:");
        howl.apresentar();
        calcifer.apresentar();

        // Não dá para criar um Morador direto (classe abstrata):
        // Morador morador = new Morador("Morador");
    }
}
