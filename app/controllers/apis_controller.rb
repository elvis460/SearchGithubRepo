class ApisController < ApplicationController
  def index
    query = params[:query]
    @current_page = params[:page] || 1

    if query
      response = RestClient.get('https://api.github.com/search/repositories', { 
        params: { 
          q: "#{query} in:name",
          sort: 'stars',
          order: 'desc',
          page: @current_page
        }
      })

      @repos = JSON.parse(response.body)
      Rails.logger.debug "======>#{@repos}"
    else
      @repos = []
    end

    respond_to do |format|
      format.js{
        render :template => 'apis/data.js.erb'
      }
    end
  rescue RestClient::ExceptionWithResponse => er
    Rails.logger.error er.to_s
    head :bad_request
  rescue => er
    Rails.logger.error er.to_s
    head :internal_server_error
  end
end
