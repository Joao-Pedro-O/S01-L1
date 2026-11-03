class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade() {
        throw new Error('Este agente precisa ter uma habilidade definida.');
    }

    entrarEmCombate() {
        console.log(`${this.codinome} entrou em combate com a pistola ${this.#pistola.modelo}. ${this.usarHabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Usou uma habilidade para controlar a área.';
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Usou uma habilidade para iniciar o combate.';
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return 'Usou uma habilidade para atacar os inimigos.';
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`Esquadrão ${this.nome} iniciou a partida.`);
        this.#agentes.forEach(agente => agente.entrarEmCombate());
    }

    listarControladores() {
        return this.#agentes.filter(agente => agente instanceof Controlador);
    }
}

const controlador1 = new Controlador('Viper', 'Classic');
const controlador2 = new Controlador('Omen', 'Ghost');
const iniciador = new Iniciador('Sova', 'Sheriff');
const duelista = new Duelista('Jett', 'Frenzy');

const esquadrao = new Esquadrao('Alfa', [
    controlador1,
    controlador2,
    iniciador,
    duelista
]);

esquadrao.iniciarPartida();

esquadrao.listarControladores().forEach(agente => {
    console.log(agente.codinome);
});
