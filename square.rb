#Программа вычисляющая корни квадратного уравнения
#Thinknetica курс Профессиональная разработка на RoR
#Урок 1

puts "Ax^2 + Bx + C = 0\n"
puts 'Введите значения коэффициентов а, в, с'
print 'a = '
a = STDIN.gets.chomp.to_f
print 'b = '
b = STDIN.gets.chomp.to_f
print 'c = '
c = STDIN.gets.chomp.to_f

d = b** 2 - (4 * a * c)
d_sqrt = Math.sqrt d

if a == 0
  puts 'Уравнение не квадратное'
elsif d > 0
  x1 = (-b + d_sqrt / (2 * a)
  x2 = (-b - d_sqrt / (2 * a)
  puts "Дискриминант равен #{d}"
  puts "1й корень равен #{x1}"
  puts "2й корень равен #{x2}"
elsif d == 0
  x = -b / (2 * a)
  puts 'Дискриминант равен нулю'
  puts "Корень равен #{x}"
else
  puts "Дискриминант #{d} меньше нуля"
  puts 'Корней нет'
end
