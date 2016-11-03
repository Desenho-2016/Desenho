class UsersController < ApplicationController

    before_action :authorize, except: [:new, :create]
    before_action :correct_user?, only: [:edit, :update, :destroy]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            SignupMailer.confirm_email(@user).deliver
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

     def update
         @user = User.find(params[:id])
         if @user.update_attributes(user_params)
             flash[:success]= "Usuário atualizado"
             redirect_to @user
         else
             render 'edit'
         end
     end

     def destroy
         @user = User.find(params[:id])
         @user.destroy
         flash[:success] = "Usuário foi deletado"
         redirect_to users_path
     end

     def edit
         @user = User.find(params[:id])
     end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
    end
end
