class BlogsController < ApplicationController

  def new
    @blog = Blog.new

  end

  def index
  end

def show
    @blog = Blog.find(params[:id])
end



    def create
        @blog = Blog.new(blog_params)
      if @blog.save
          redirect_to @blog
      else
          render "new"
      end
    end



  private


      def blog_params
        params.require(:blog).permit(:title, :contents)
      end



end
