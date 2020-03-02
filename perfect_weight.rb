#Программа вычисляющая идеальный вес пользователя
#Thinknetica курс Профессиональная разработка на RoR
#Урок 1


puts "Привет, как тебя зовут?"
user_name = ''
while user_name == ''
	user_name = STDIN.gets.chomp.capitalize
end

puts "\n- Привет, #{user_name}, давай посмотрим, готов ли ты к пляжному сезону:"
user_height = 0
while user_height == 0 
	puts "\nВведи свой рост:"
	user_height = STDIN.gets.chomp.to_f
	if user_height == 0
		puts "\nНеобходимо вводить только цифры(больше нуля)!"
	end
end

user_weight = 0
while user_weight == 0 
	puts "\nВведи свой вес:"
	user_weight = STDIN.gets.chomp.to_f
	if user_weight == 0
		puts "\nНеобходимо вводить только цифры(больше нуля)!"
	end
end

perfect_weight = (user_height - 110)*1.15

if user_weight <= perfect_weight
	puts "\n- Твой вес уже оптимальный!"
else
	puts "\n- Поднажми, к лету тебе надо сбросить #{(user_weight - perfect_weight).round(2)} кг."
end