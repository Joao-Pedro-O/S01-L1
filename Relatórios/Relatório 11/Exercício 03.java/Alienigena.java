package org.example;

public class Alienigena implements Sobrenatural {
    private String nomeAlienigena;

    public Alienigena(String nome) {
        this.nomeAlienigena = nome;
    }

    @Override
    public void manifestar() {
        String mensagem = nomeAlienigena + " chegou a bordo da sua nave espacial!";
        System.out.println(mensagem);
    }
}
