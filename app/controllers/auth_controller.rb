class AuthController < ApplicationController
    def login
      user = User.find_by(email_address: params[:email_address])
  
      if user && user.authenticate(params[:password])

        jwt_token = encode_token(user_id: user.id, user_email: user.email_address)

        render json: { token: jwt_token, message: 'Login successful' }
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    def logout
      render json: { message: 'Logout successful' }
    end

    private

    def encode_token(payload)
      JWT.encode(payload, Rails.application.config.jwt_secret_key, 'HS256')
    end
  
end  