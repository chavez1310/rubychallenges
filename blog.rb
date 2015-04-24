class Blog
   
  def initialize
      @time = time.now
	   puts "add title"
	   @title = gets.chomp
    @blog_posts = []
    @total_blog_posts = 0
  end
  
  def new_blog
    new_blog_post = Blog_Post.new
    puts "new blog post"
    @blog_posts << new_blog_post
    @total_blog_posts +=1
  end 
  
  def collect_blog_posts
    return @blog_posts
  end
 
  def publish(blog_posts)
    blog_posts.each do |blog_post|
      puts blog_post.title
      puts blog_post.created_at
      puts blog_post.content
    end
  end
end
 
 
class Blog_Post
  attr_accessor :title, :created_at, :content
  
  def initialize
    @created_at = Time.now
    puts "Name your blog post:"
    @title = gets.chomp
    
    puts "Your blog post content:"
    @content = gets.chomp
  end
  
  def edit_blog_content
    puts "New blog title:"
    @title = gets.chomp
 
    puts "New blog text:"
    @content = gets.chomp
  end
  
end
 
my_blog = Blog.new
blog_post = my_blog.create_blogpost
all_blog_posts = my_blog.collect_blog_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts)
end