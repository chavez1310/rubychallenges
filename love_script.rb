puts "Can't you see what everybody wants from you?"
answer = gets.chomp.downcase

amount_of_love = [
	"If you could want that, too, you'll be happy.",
	"By now, you know just how I feel"
]

total_love = amount_of_love.size
love_displayed = 0

while (love_displayed<= total_love)
	puts amount_of_love[love_displayed]
	love_displayed += 1
end