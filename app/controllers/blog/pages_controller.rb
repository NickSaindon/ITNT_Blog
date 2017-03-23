module Blog
  class PagesController < BlogController

    def archive
      @posts = Post.blog_posts.published.paginate(:page => params[:page], :per_page => 4)
    end

  end
end