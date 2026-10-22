class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Drink: #{@nome} | Preço: R$ #{@_preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    super + " | Lenda homenageada: #{@lenda}"
  end
end

drinks = [
  CoquetelAfterlife.new("Night City Sunrise", 25),
  DrinkDeLenda.new("Johnny Silverhand", 120, "Johnny Silverhand"),
  DrinkDeLenda.new("Panam Palmer", 90, "Panam Palmer")
]

drinks.each do |drink|
  puts drink.ficha
end

puts "-----"

lenda = drinks[1]

lenda.preco = 500
lenda.preco = 80
puts lenda.ficha

# lenda.nome = "Outro nome"
