class PagesController < ApplicationController
   before_filter :find_page, only: [:idit,:update,:show]


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

	def destroy
	end

	private
	  def page_params
	  	params[:page].permit(:name, :description)
	  end

	  def find_page
	  	@page = Page.find(params[:id])
	  end
end
