class ApisController < ApplicationController
  def index
    query = params[:query]
    page = params[:page] || 1

    if query
      response = RestClient.get('https://api.github.com/search/repositories', { 
        params: { 
          q: "#{query} in:name",
          page: page
        }
      })

      @repos = format_data(JSON.parse(response.body))
    else
      @repos = []
    end
  rescue RestClient::ExceptionWithResponse => er
    Rails.logger.error er.to_s
    head :bad_request
  rescue => er
    Rails.logger.error er.to_s
    head :internal_server_error
  end
end
