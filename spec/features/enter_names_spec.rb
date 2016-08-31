require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Summer'
    fill_in :player_2_name, with: 'Joseph'
    click_button 'Submit'
    expect(page).to have_content 'Summer vs Joseph'
  end
end
