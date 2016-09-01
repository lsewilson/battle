require 'spec_helper'

feature 'attack opponent' do

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Laura attacked Joseph")
  end

  scenario 'player 1 attacks player 2 and decreases HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Joseph: 90HP"
  end

  scenario 'HP still decreases with attacks after switching' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch'
    click_button 'Attack'
    expect(page).to have_content "Laura: 90HP"
  end



end
