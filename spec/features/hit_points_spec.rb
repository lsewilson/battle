require 'spec_helper'

feature 'hit-points' do

  scenario "player 1 can see player 2's HP" do
    sign_in_and_play
    expect(page).to have_content 'Joseph: 100HP'
  end

end
