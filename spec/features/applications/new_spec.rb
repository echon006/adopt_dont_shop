require 'rails_helper'

RSpec.describe 'application#new' do
  it "exists" do
    visit '/applications/new'
  end

  it "has a link from the pets page" do
    visit '/pets'
    expect(page).to have_link("Start an Application")
    click_link "Start an Application"
    expect(current_path).to eq('/applications/new')
  end

  it "has a form to create an application and returns to application#show" do
    visit '/applications/new'

      fill_in "name", with: 'Appicant 1'
      fill_in "street_address", with: "555 Turing st"
      fill_in "city", with: "Aurora"
      fill_in "state", with: "CO"
      fill_in "zip_code", with: "80016"

      click_button('Submit')
      application_id = Application.last.id

      expect(current_path).to eq("/applications/#{application_id}")
      expect(page).to have_content("Appicant 1")
      expect(page).to have_content("555 Turing st")
      expect(page).to have_content("Aurora")
      expect(page).to have_content("CO")
      expect(page).to have_content("80016")
  end

  xit "checks that you cannot submit if parts are not filled in" do
    visit '/applications/new'
    fill_in "city", with: "Aurora"
    fill_in "state", with: "CO"

    click_button('Submit')
    expect(current_path).to eq("/applications/new")
  end


end
