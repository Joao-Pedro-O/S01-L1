class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `${this.criatura} - Nível de perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas;

    constructor(numero) {
        this.numero = numero;
        this.#fichas = [];
    }

    anotar(criatura, nivelDePerigo) {
        const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(ficha);
    }

    exibirFichas() {
        console.log(`Diário número ${this.numero}`);
        this.#fichas.forEach(ficha => console.log(ficha.descrever()));
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios;

    constructor(dono) {
        this.dono = dono;
        this.#funcionarios = [];
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`A Cabana do Mistério pertence a ${this.dono}.`);
        this.#funcionarios.forEach(funcionario => {
            console.log(`${funcionario.nome} - ${funcionario.cargo}`);
        });
    }
}

const diario = new DiarioMisterioso(3);

diario.anotar('Bill Cipher', 'Alto');
diario.anotar('Gnomos', 'Médio');
diario.anotar('Dipper Clone', 'Baixo');

diario.exibirFichas();

const funcionario1 = new Funcionario('Wendy', 'Atendente');
const funcionario2 = new Funcionario('Soos', 'Manutenção');

const cabana = new CabanaDoMisterio('Tio Stan');

cabana.contratar(funcionario1);
cabana.contratar(funcionario2);

cabana.abrirAsPortas();
