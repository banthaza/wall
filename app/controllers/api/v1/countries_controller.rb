class Api::V1::CountriesController < BaseApiController

  def index
    command = GetCountries.call()
    if command.success?
      render json: {data:{ countries: command.result }}
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

end
