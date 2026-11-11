package org.example;
import java.util.HashMap;

public class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> registros;

    public MapaDeAvistamentos() {
        registros = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural criatura) {
        registros.put(local, criatura);
    }

    public void investigar(String local) {
        Sobrenatural encontrada = registros.get(local);

        if (encontrada == null) {
            System.out.println("Nada de estranho em " + local + ", está tudo calmo.");
        } else {
            encontrada.manifestar();
        }
    }
}
