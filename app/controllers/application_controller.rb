class ApplicationController < ActionController::Base
   http_basic_authenticate_with name: "dhh", password: "secret", except: :index
  protect_from_forgery with: :exception

  def hello
    render html: "hello, world!"
  end
end
