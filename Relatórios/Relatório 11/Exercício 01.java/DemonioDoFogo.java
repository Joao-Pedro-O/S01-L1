package org.example;

public class DemonioDoFogo extends Morador {

    private static final String FRASE = " e faco o castelo andar.";

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        String mensagem = "Sou " + this.getNome() + FRASE;
        System.out.println(mensagem);
    }
}
