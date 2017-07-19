class DancesController < ApplicationController




    def new
      @dance = Dance.new

    end

    def show
        @dance = Dance.find(params[:id])
    end


    def index
      @dances = Dance.all
    end

    def edit

    end

    def destroy
      Dance.find(params[:id]).destroy
      redirect_to current_user
    end


    def create
      @dance = current_user.dances.build(dance_params)

      if @dance.save
        redirect_to @dance
      else
        render "new"
      end
    end



    private



        def dance_params
          params.require(:dance).permit(:title, :dance)
        end


end
