class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @post = post
    @posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_title(post_title)
    post = Post.new
    @posts << post
    post.author = self
  end

end
