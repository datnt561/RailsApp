class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  
  def index
    @users = User.all
  end

  def new
  	@user = User.new
	end
	def create
  	@user = User.new(params[:user])
  	if @user.save
   		redirect_to "/register", :notice => "Create account success !"
  	else
   		render "new"
  	end
	end
  
  def show     
  end

  def edit
  end

  private  
    def set_user
      @user = User.find(session[:user_id_abc123])
    end
    def user_params
      params.require(:user).permit(:username, :password, :email, :fullname)
    end

end
