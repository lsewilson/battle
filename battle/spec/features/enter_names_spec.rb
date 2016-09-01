require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Rosie vs. Tim'
  end
end

feature 'See hit points' do
  scenario 'player 2 status' do
    sign_in_and_play
    expect(page).to have_content 'Tim: 60HP'
  end
end

feature 'Attack player' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'You attacked player 2!'
  end
end
