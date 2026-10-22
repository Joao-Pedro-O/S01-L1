class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "Cada instrumentista deve implementar interpretar"
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{@nome} toca #{@instrumento} na peça #{peca} e conduz a melodia principal."
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{@nome} toca #{@instrumento} na peça #{peca} e acompanha o ritmo do solista."
  end
end

class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "O regente #{@nome} conduz a peça #{peca}."
    @orquestra.each do |instrumentista|
      instrumentista.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map do |instrumentista|
      "#{instrumentista.class}: #{instrumentista.nome}"
    end
  end
end

kousei = Solista.new("Kousei Arima", "Piano")
tsubaki = Acompanhador.new("Tsubaki Sawabe", "Violino")
regente = Regente.new("Sr. Takeshi")

regente.convocar(kousei)
regente.convocar(tsubaki)

regente.reger("Ballade No. 1 de Chopin")

puts "-----"

regente.escalacao.each do |texto|
  puts texto
end

puts "-----"

generico = Instrumentista.new("Fulano", "Flauta")
# generico.interpretar("Qualquer peça")
