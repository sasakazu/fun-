class BlogsController < ApplicationController

  def new
    @blog = Blog.new

  end

  def index
  end


  def show
      @blog = Blog.find(params[:id])
  end


  def edit
    @blog = Blog.find(params[:id])

  end

  def destroy
    Blog.find(params[:id]).destroy
    redirect_to current_user
  end



  def create
    @blog = current_user.blogs.build(blog_params)

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
