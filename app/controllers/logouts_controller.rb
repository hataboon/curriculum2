class LogoutsController < ApplicationController
    def show
        session[:user_id] = nil
        redirect_to root_path, notice: 'ログアウトしました。' 
    end
end

