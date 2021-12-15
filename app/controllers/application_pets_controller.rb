class ApplicationPetsController < ApplicationController

  def create
    @app_pet = ApplicationPet.create(app_pet_params)
    redirect_to "/applications/#{@app_pet.application_id}"
    @app_pet.save
  end

  def update
    @app_pets = ApplicationPet.where(application_id: params[:application_id])
    @app_pets.each do |app_pet|
      app_pet.status = 0
      app_pet.reason_good_owner = params[:reason_good_owner]
      app_pet.save
    end
    redirect_to "/applications/#{params[:application_id]}"
  end

  private

  def app_pet_params
    params.permit(:application_id, :pet_id, :reason_good_owner )
  end
end
