class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead. 
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :set_last_routes
	 
	def set_locale
	  if cookies[:locale].nil? && params[:locale].nil?
			I18n.locale = extract_locale_from_accept_language_header
		elsif params[:locale].present?
			I18n.locale = params[:locale]
			cookies[:locale] = params[:locale]
		else
			I18n.locale = cookies[:locale]
		end
	end

	private

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].try(:scan, /^[a-z]{2}/).try(:first)
  end


  def set_last_routes
    @last_routes = Route.all
  end


end
