class MakersController < ApplicationController

	def index
		@makers = Maker.all
	end

    def new
    end

    def show
    end

    def create
        if Maker.create(params['maker'])
            redirect_to "/makers"
        end
    end

    def update
        @maker = Maker.find(params['id'])
        if @maker.update_attributes(params['maker'])
            redirect_to "/makers"
        else
            redirect_to "/makers/#{params['id']}/edit"
        end
    end

    def edit
        @maker = Maker.find(params[:id])
    end
end