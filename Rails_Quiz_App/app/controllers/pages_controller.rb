class PagesController < ApplicationController
  	def home
  		
  	end
  
  	def contact
  	
  	end

  	def subject
  		@cate_id= params[:cate_id]
  		@slug= params[:slug]
  		@cate= Categories.find(params[:cate_id])
  		@quiz= Quizzes.where(cate_id: params[:cate_id])  		
  	end
end
