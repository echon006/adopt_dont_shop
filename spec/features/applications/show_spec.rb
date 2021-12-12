require 'rails_helper'

RSpec.describe 'Applications pages', type: :feature do
  before :each do
    @shelter = Shelter.create(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)
    @pet_1 = Pet.create(adoptable: true, age: 1, breed: 'sphynx', name: 'Lucille Bald', shelter_id: @shelter.id)
    @pet_2 = Pet.create(adoptable: true, age: 3, breed: 'doberman', name: 'Lobster', shelter_id: @shelter.id)
    @application_1 = Application.create(name: "Applicant 1", street_address: "555 Turing st", city: "Aurora", state: "CO", zip_code: "80016")
  end
  describe 'show page' do
    it "shows all data related to an application" do
      visit "/applications/#{@application_1.id}"
      expect(page).to have_content(@application_1.name)
      expect(page).to have_content(@application_1.street_address)
      expect(page).to have_content(@application_1.city)
      expect(page).to have_content(@application_1.state)
      expect(page).to have_content(@application_1.zip_code)
    end
  end
end
