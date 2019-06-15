class AuthController < ApplicationController
    def create
    
        @user = User.find_by(email: params[:user][:email])
        
        if @user && @user.authenticate(params[:user][:password])
        
          render json: {
            message: "correct email and password",
            user_info: @user,
            error: false,
            token: encode({user_id: @user.id})
            }, status: :accepted
        else
        
          render json: {
            message: "Wrong email or password!",
            error: true
            }, status: :unauthorized
        end
      end
    
      private
    
    def login_params
      byebug
     params.require(:user).permit(:email, :password)
     byebug
     
    end
end
