class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} ataca ${alvo.nome} com aura.`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} usa um soco fortalecido contra ${alvo.nome}.`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} transforma sua aura em eletricidade e ataca ${alvo.nome}.`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} materializa uma arma e ataca ${alvo.nome}.`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`Aranhas avistadas em ${this.cidade}:`);
        this.#aranhas.forEach(aranha => {
            console.log(`Número ${aranha.numero}: ${aranha.nome}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(aranha => aranha.numero === numero);
    }
}

const aranha1 = new Aranha('Chrollo', 1);
const aranha2 = new Aranha('Machi', 6);

const trupe = new TrupeFantasma('Yorknew', [aranha1, aranha2]);

trupe.revelarAranhas();

const aranhaEncontrada = trupe.buscarAranha(6);

const usuarios = [
    new Intensificador('Gon'),
    new Transmutador('Killua'),
    new Materializador('Kurapika')
];

usuarios.forEach(usuario => usuario.atacar(aranhaEncontrada));
