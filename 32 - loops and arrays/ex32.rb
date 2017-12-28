the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#traditional
for number in the_count
  puts "This is count #{number}"
end

#ruby style--- preferred way
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#also we can go through mixed lists too
change.each{ |item| puts "I got #{item}"}

elements = []

#range operator (.. inclusive)
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the end
  elements.push(i)
end

elements.each {|i| puts "Element was: #{i}"}