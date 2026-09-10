package main
import "fmt"

func main() {
	var valor1, valor2, valor3 int

	fmt.Print("Digite as vendas do 1º trimestre: ")
	fmt.Scanln(&valor1)
	fmt.Print(valor1,"\n")

	fmt.Print("Digite as vendas do 2º trimestre: ")
	fmt.Scanln(&valor2)
	fmt.Print(valor2,"\n")

	fmt.Print("Digite as vendas do 3º trimestre: ")
	fmt.Scanln(&valor3)
	fmt.Print(valor3,"\n")

	total := valor1 + valor2 + valor3

	fmt.Printf("Total de vendas: %d unidades\n", total)

	if total < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		switch {
		case total >= 250:
			fmt.Println("Classificação: Categoria Top Seller")

		case total >= 180:
			fmt.Println("Classificação: Categoria Sênior")

		case total >= 100:
			fmt.Println("Classificação: Categoria Pleno")
		}
	}
}
