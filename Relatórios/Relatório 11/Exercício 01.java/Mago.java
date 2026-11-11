package org.example;

public class Mago extends Morador {
    private String magia;

    public Mago(String nome, String magia) {
        super(nome);
        this.magia = magia;
    }

    public String getMagia() {
        return magia;
    }

    @Override
    public void apresentar() {
        String mensagem = "Eu sou " + getNome() + " e minha magia é " + magia + ".";
        System.out.println(mensagem);
    }
}
