#Программа вычисляющая является ли треугольник прямоугольным, равнобедренным или равносторонним
#Thinknetica курс Профессиональная разработка на RoR
#Урок 1

puts 'Введите три стороны треугольника'
print "a = "
a = STDIN.gets.chomp.to_f
print 'b = '
b = STDIN.gets.chomp.to_f
print 'c = '
c = STDIN.gets.chomp.to_f
triangle = [a, b, c]
small_side, middle_side, large_side = triangle.sort

if triangle.uniq.size == 1
  puts 'Ваш треугольник равносторонний'
elsif triangle.uniq.size == 2
  if (small_side**2 + middle_side**2).round(2) == (large_side**2).round(2)
    puts 'Ваш треугольник прямоугольный и равнобедренный'
  else
    puts 'Ваш треугольник равнобедренный'
  end
elsif (small_side**2 + middle_side**2).round(2) == (large_side**2).round(2)
  puts 'Ваш треугольник прямоугольный'
else
  puts 'Ваш треугольник ниочем'
end