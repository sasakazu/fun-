class MusicsController < ApplicationController


  def new
    @music = Music.new
  end

  def index
  end

  def show
    @music = Music.find(params[:id])
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
