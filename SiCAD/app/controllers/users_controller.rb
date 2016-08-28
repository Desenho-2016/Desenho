class UsersController < ApplicationController

    before_action :authorize, except: [:new, :create]
    before_action :correct_user?, only: [:edit, :update, :destroy]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user, notice: "Usuário foi criado com sucesso!"
        else
            render action: :new
        end
    end

    def index
      @users = User.all
    end

     def show
      @user = User.find(params[:id])
     end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
