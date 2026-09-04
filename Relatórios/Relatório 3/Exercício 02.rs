use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool 
{
    let diferenca = palpite - numero_secreto;

    let diferenca_absoluta;
    if diferenca < 0 
    {
        diferenca_absoluta = diferenca * -1;
    } 
    else 
    {
        diferenca_absoluta = diferenca;
    }

    diferenca_absoluta <= 5
}

fn main() 
{
    let numero_secreto: i32 = 13;

    loop 
    {
        println!("Digite seu palpite:");

        let mut entrada = String::new();
        io::stdin().read_line(&mut entrada).expect("Falha ao ler a linha");

        let palpite: i32 = entrada.trim().parse().unwrap_or(0);

        if acertou_o_alvo(palpite, numero_secreto) 
        {
            let mut distancia = palpite - numero_secreto;
            if distancia < 0 
            {
                distancia = distancia * -1;
            }

            println!("Parabens, voce acertou o alvo! Voce ficou a apenas {} unidade(s) do numero secreto ({})", distancia, numero_secreto);
            break;
        } 
        else 
        {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
