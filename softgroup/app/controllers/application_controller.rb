class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_auth

  private

  def check_auth

  end
end
