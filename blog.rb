class Blog
  @@all_blog_posts = [] #empty array which will eventually not be empty
  @@num_all_blog_posts = 0 #start at zero

  def self.all
    @@all_blog_posts
  end

  def self.count_all_blog_posts(new_blog_post)
    @@all_blog_posts << new_blog_post #new posts into the empty array
    @@num_all_blog_posts += 1 #increment by one
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title: \n #{post.title}"
      puts "Body: \n #{post.content}"
      puts "Publish date: \n #{post.created_at}"
    end
  end
end

class BlogPost < Blog
  def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now 
    post.save
    puts "Do you want to create another post? Y/N"
    create if gets.chomp.downcase == 'y'
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def created_at
    @created_at
  end
 
  def created_at=(created_at)
    @created_at = created_at
  end

  def save
    BlogPost.count_all_blog_posts(self)
  end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts BlogPost.inspect
BlogPost.publish
