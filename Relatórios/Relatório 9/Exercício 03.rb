class PhoneWave
  def enviar_dmail(mensagem)
    puts "D-Mail: #{mensagem}"
    puts "Mensagem enviada para o passado!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Lab Mem ##{membro.numero} - #{membro.nome} foi admitido."
  end

  def experimento(mensagem)
    puts "Iniciando experimento..."
    @membros.each do |membro|
      puts "Presente: Lab Mem ##{membro.numero} - #{membro.nome}"
    end
    @phonewave.enviar_dmail(mensagem)
  end
end

okabe = MembroDoLab.new(1, "Rintaro Okabe")
mayuri = MembroDoLab.new(2, "Mayuri Shiina")

lab = LaboratorioDeGadgets.new

lab.admitir(okabe)
lab.admitir(mayuri)

puts "-----"

lab.experimento("Eu sou o cientista louco Hououin Kyouma!")

# COMPOSIÇÃO: é a relação entre LaboratorioDeGadgets e PhoneWave.
# AGREGAÇÃO: é a relação entre LaboratorioDeGadgets e MembroDoLab.
