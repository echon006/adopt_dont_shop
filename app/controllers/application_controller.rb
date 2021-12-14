class ApplicationController < ActionController::Base

  def welcome
  end

  def show
    @application = Application.find(params[:id])

  end

  def new

  end

  def create
    @application = Application.create(application_params)
    if @application.save
      redirect_to "/applications/#{@application.id}"
    else
      render :new
    end
  end

  private

  def error_message(errors)
    errors.full_messages.join(', ')
  end

  def application_params
    params.permit(:name, :street_address, :city, :state, :zip_code)
  end
end
