package org.example;

public class EspiritoYoukai implements Sobrenatural {
    private String nomeEspirito;

    public EspiritoYoukai(String nome) {
        this.nomeEspirito = nome;
    }

    @Override
    public void manifestar() {
        String mensagem = nomeEspirito + " apareceu envolto em uma névoa misteriosa!";
        System.out.println(mensagem);
    }
}
