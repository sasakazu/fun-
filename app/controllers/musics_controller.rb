class MusicsController < ApplicationController


  def new
    @music = Music.new
  end

  def index
  end

  def show
    @music = Music.find(params[:id])
    @user = @music.user

  end

  def edit
    @user = User.find(params[:id])
    @music = current_user.musics.find(params[:id])
  end


  def update
   @music = Music.find(params[:id])
   if @music.update_attributes(music_params)
         redirect_to @music
   else
     render 'edit'
   end
  end


  def destroy
    Music.find(params[:id]).destroy
    redirect_to current_user
  end


    def create
      @music = current_user.musics.build(music_params)

      if @music.save
          redirect_to @music
      else
          render "new"
      end
    end




private

    def music_params
      params.require(:music).permit(:title, :music)
    end






end
