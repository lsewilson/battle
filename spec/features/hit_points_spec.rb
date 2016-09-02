require 'spec_helper'

feature 'hit-points' do

  scenario "player 1 can see player 2's HP" do
    sign_in_and_play
    expect(page).to have_content 'Joseph: 100HP'
  end

  scenario "player 1 can see player 1's HP" do
    sign_in_and_play
    expect(page).to have_content 'Laura: 100HP'
  end

  scenario "player 1 can see HP after attacking" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Laura: 100HP'
  end

end
