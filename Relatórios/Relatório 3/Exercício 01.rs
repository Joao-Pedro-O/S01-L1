use std::io;

fn validar_placa(placa: &str) -> bool 
{
    let mut letras = 0;
    let mut numeros = 0;

    for c in placa.chars() 
    {
        if c.is_ascii_uppercase() 
        {
            letras = letras + 1;
        }
        if c.is_digit(10) 
        {
            numeros = numeros + 1;
        }
    }

    if placa.len() >= 7 && letras >= 4 && numeros >= 2 
    {
        return true;
    } 
    else 
    {
        return false;
    }
}

fn main() 
{
    loop 
    {
        println!("Digite a placa do veiculo:");

        let mut placa = String::new();
        io::stdin().read_line(&mut placa).expect("Falha ao ler a linha");
        let placa = placa.trim();

        if validar_placa(placa) 
        {
            println!("Placa cadastrada no sistema!");
            break;
        } 
        else 
        {
            println!("Placa invalida. Tente novamente!");
        }
    }
}
