class UsersController < ApplicationController



  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs.paginate(page: params[:page])


  end

  def edit
    @user = User.find(params[:id])

  end

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
          redirect_to @user
    else
      render 'edit'
    end
   end




  private

      def user_params
        params.require(:user).permit(:name, :icon)
      end



            def blog_params
              params.require(:blog).permit(:title, :contents)
            end


end
