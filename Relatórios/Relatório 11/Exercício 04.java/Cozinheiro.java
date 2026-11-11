package org.example;
import java.util.ArrayList;

public class Cozinheiro {
    private String nomeCozinheiro;
    private Panela panelaDeCozinha;
    private ArrayList<Monstro> listaDeIngredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nomeCozinheiro = nome;
        panelaDeCozinha = new Panela(materialDaPanela);
        listaDeIngredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        listaDeIngredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Chef: " + nomeCozinheiro);
        System.out.println("Material da panela: " + panelaDeCozinha.getMaterial());

        for (Monstro ingrediente : listaDeIngredientes) {
            String prato = ingrediente.getNome() + " - " + ingrediente.receita();
            System.out.println(prato);
        }
    }
}
