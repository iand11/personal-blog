module PostsHelper
  
  def all_current_posts
    posts = []
    @all_posts.each do |post|
      posts << post
    end 
    posts
  end

  def current_post(x)
    all_current_posts.index(x) + 1
  end

  def next_post(x)
    current = all_current_posts.index(x)
    after = all_current_posts[current + 1]
    after.id
  end

  def prev_post(x)
    current = all_current_posts.index(x)
    previous = all_current_posts[current - 1]
    previous.id
  end

  def post_pic(post)
    "https://unsplash.it/300/300/?image=#{post.pic_number} "
  end
end


