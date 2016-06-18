class DocsController < ApplicationController
  USERNAME, PASSWORD = 'doc_reader', '123123'

  before_action :basic_authenticate

  layout false

  def index
  end
  private

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == USERNAME && PASSWORD == password
    end
  end
end
