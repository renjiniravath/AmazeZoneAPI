class UsersController < ApplicationController
  skip_before_action :authenticate_request
  def create
    @user = User.new(user_params)

    if @user.save
      render(json: { message: 'User created successfully' }, status: :created)
    else
      render(json: { errors: @user.errors.full_messages }, status: :unprocessable_entity)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email_address, :password, :password_confirmation)
  end
end
