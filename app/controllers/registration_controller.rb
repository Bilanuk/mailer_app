class RegistrationController < ApplicationController
  def new
    @user = User.new
    render "registrations/new"
  end
end