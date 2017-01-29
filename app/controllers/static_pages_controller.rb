class StaticPagesController < ApplicationController
	def welcome
	@title = 'Здравствуйте'
end
   def about
	@title = 'Мы меняемся '
end
end
