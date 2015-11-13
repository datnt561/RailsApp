class AdminController < ApplicationController
	def home
		@quizzz= Quizzes.new
	end

	def quizzesadd
		#quiz
		
		#category

		#choice

		redirect_to "/admin/quizzesadd", :notice => "Create quizzes success !"  	
	end
end