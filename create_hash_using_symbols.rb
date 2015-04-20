hash_01 = { name: "Bill", favourite_food: "burgers"}
hash_02 = { name: "Veronica", favourite_food: "pizza"}
hash_03 = { name: "Julio", favourite_food: "sushi"}
hash_04 = { name: "Angelina", favourite_food: "spaghetti"}

hungriest = hash_03 [:name]

puts "#{hungriest} is the one whom needs more of his favourite food  #{hash_03 [:favourite_food]}. "