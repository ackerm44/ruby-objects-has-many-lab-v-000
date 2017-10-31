class Author
  attr_accessor :name

  @@post_count

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def posts
    @posts
  end

  def add_post_by_title(post_title)
    post = Post.new
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
