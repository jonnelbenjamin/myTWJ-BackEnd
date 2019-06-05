class AuthController < ApplicationController
    def create
        byebug
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            byebug
          render json: {
            message: "correct email and password",
            user_info: @user,
            error: false,
            token: encode({user_id: @user.id})
            }, status: :accepted
    
        else
            byebug
          render json: {
            message: "Wrong email or password!",
            error: true
            }, status: :unauthorized
        end
      end
    
      private
    
    def login_params
     params.require(:user).permit(:email, :password)
    end
end
