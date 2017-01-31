class PagesController < ApplicationController
	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)

		if @page.save
			redirect_to pages_path
		else
			render :new
		end

	end

	def index
		@pages = Page.all


	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
	end

	def destroy
	end

	private
	  def page_params
	  	params[:page].permit(:name, :description)
	  end
end
