class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action do 
        redirect_to posts_path unless current_user && current_user.admin?
    end

    def index
        @users = User.all
    end

    def is_admin
        @user = User.find(params[:id])
        @user.update(admin: true)
        redirect_to root_path
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: 'User deleted.'
    end
end