class AuthController < ApplicationController
    def login
      user = User.find_by(email_address: params[:email_address])
  
      if user && user.authenticate(params[:password])
        # Create a JWT token or set a session to handle authentication
        # You can use gems like 'jwt' for token generation.
        # For simplicity, we're using a session-based approach here.
        session[:user_id] = user.id
        render json: { message: 'Login successful' }
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    def logout
      # Implement logout logic here, such as clearing the session.
      session[:user_id] = nil
      render json: { message: 'Logout successful' }
    end
end  