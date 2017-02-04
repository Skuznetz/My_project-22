class PagesController < ApplicationController
   before_filter :find_page, only: [:edit,:update,:show,:destroy]
   
before_filter :authenticate_user!

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
	end

	def update
	  if @page.update(page_params)
	  	redirect_to pages_path
	  else
	  	render :edit
	  end
	end

	def show
	end

	def destroy
	  if @page.destroy
	  	redirect_to pages_path
	  else
	  	redirect_to pages_path, error: 'Не получилось удалить'
	  end
	end

	private
	  def page_params
	  	params[:page].permit(:name, :description)
	  end

	  def find_page
	  	@page = Page.find(params[:id])
	  end
end
