class Amigo

	attr_accessor :name, :other_name
	
end



class Friend < Amigo
		
	def says
		return "hellooooo"
	end
	
end


my_friend = Friend.new
my_friend.name = "Ronald McDonald"
friend_name = my_friend.name
puts "#{friend_name} says #{my_friend.says}."

puts my_friend.inspect