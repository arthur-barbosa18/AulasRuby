##### ARRAY E LOOP ##########
professores_da_ufmg = ["Leo Torres", "Carmela", "Bruno Otávio", "Armando Alves Neto", "Ricardo Duarte"]
for professor in professores_da_ufmg do
#	puts professor
end


#HASH

materias_da_ufmg = {Controle: 70, InformáticaIndustrial: 80, ASDL: 90, Robotica: 95, SPP: 100}

puts materias_da_ufmg[:InformáticaIndustrial]

for materia in materias_da_ufmg do
	#puts materia
end


puts materias_da_ufmg.class


nome = "Marina Loures"

nome.each_char { |c| 
    puts c
}


def nomedafuncao(params)
	puts "dsadas da funcao #{params}"
end


nomedafuncao("Marina")

def IMC(idade, altura)
	return "quqlaquer coisa"
end