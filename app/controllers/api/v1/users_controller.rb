class Api::V1::UsersController < BaseApiController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      render json: { data: {auth_token: command.result} }
    else
     render json: { error: command.errors }, status: :unauthorized
    end
  end

  def index
    command = GetUsers.call()

    if command.success?
      render json: { data: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end


end
