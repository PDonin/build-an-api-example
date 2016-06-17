class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :destroy_session
  skip_before_action :verify_authenticity_token

  private
  def destroy_session
    request.session_options[:skip] = true
  end

  def api_error(opts={})
    render :nothing=>true, status: opts[:status]
  end

  def unauthenticated!
    api_error(status: 401)
  end
end
