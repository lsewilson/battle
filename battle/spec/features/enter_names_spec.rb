require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Rosie'
    fill_in :player_2_name, with: 'Tim'
    click_button 'Submit'
    expect(page).to have_content 'Rosie vs. Tim'
  end
end

feature 'See hit points' do
  scenario 'player 2 status' do
    visit ('/')
    fill_in :player_1_name, with: 'Matthew'
    fill_in :player_2_name, with: 'Tim'
    click_button 'Submit'
    expect(page).to have_content 'Tim: 60HP'
  end
end
