require 'spec_helper'

feature 'game over' do

  scenario 'game over when player reaches 0 HP first' do
    sign_in_and_play
    18.times do
      click_button "Attack"
      click_button "Switch"
    end
    click_button "Attack"
    expect(page).to have_content "GAME OVER"
  end


end
