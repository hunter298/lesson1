#Программа вычисляющая идеальный вес пользователя
#Thinknetica курс Профессиональная разработка на RoR
#Урок 1


puts 'Привет, как тебя зовут?'
user_name = STDIN.gets.chomp.capitalize


puts "\n- Привет, #{user_name}, давай посмотрим, готов ли ты к пляжному сезону:"

puts 'Введи свой рост:'
user_height = STDIN.gets.chomp.to_f


puts 'Введи свой вес:'
user_weight = STDIN.gets.chomp.to_f

perfect_weight = (user_height - 110) * 1.15

if user_weight <= perfect_weight
  puts "\n- Твой вес уже оптимальный!"
else
  puts "\n- Поднажми, к лету тебе надо сбросить #{(user_weight - perfect_weight).round(2)} кг."
end