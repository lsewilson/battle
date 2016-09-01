require 'spec_helper'

feature 'attack opponent' do

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Laura attacked Joseph")
  end

end
