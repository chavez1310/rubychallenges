class blog

def initialize(title, blog_post, author, time )
	@title = title
	@blog_post = blog_post
	@time = time
	@author = author

end

def blog_post_hash
	@blog_post_hash = {@title => {"created_at" => @created_at, "content" => @content, "author" => @author}}
	return @post_hash
end

def self.publish_all
	puts "All posts are:"
	@@all_posts.sort_by { |k, v| v["created_at"]} .each do |p|
		puts p
	end
end

end

class Page < Post
	def number_of_columns=(number_of_columns)
		@number_of_columns = number_of_columns
	end
end

Post.new("First post", "The content of the first post", "Nataly","2015-04-21 16:43:43")
Post.new("Third post", "The content of the third post", "Nataly","2015-04-21 16:43:45")
Post.new("Second post", "The content of the second post", "Nataly","2015-04-21 16:43:44")
puts "Post.inspect" + Post.inspect
Post.publish_all

puts "nThe page challenge: "
p = Page.new("Page_title", "The content of the first page", "Nataly", "2015-04-21 16:43:55")
p.number_of_columns = 5
puts p.inspect