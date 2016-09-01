require 'spec_helper'

feature 'hit-points' do

  scenario "player 1 can see player 2's HP" do
    visit('/')
    fill_in :player_1_name, with: 'Laura'
    fill_in :player_2_name, with: 'Joseph'
    click_button 'Submit'
    expect(page).to have_content 'Joseph: 100HP'
  end

end
