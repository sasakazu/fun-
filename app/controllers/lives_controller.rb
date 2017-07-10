class LivesController < ApplicationController


  def new
    @live = Live.new

  end

  def show
      @live = Live.find(params[:id])
  end


  def index
    @lives = Live.all
  end


  def create
      @live = Live.new(live_params)
    if @live.save
        redirect_to @live
    else
        render "new"
    end
  end






  private



      def live_params
        params.require(:live).permit(:title, :live)
      end

  end
