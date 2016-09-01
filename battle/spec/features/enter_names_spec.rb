require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Rosie vs. Tim'
  end
end

feature 'At the beginning' do
  scenario 'player_2 should show hit_points' do
    sign_in_and_play
    expect(page).to have_content 'Tim: 60HP'
  end

  scenario "it should show that it is player_1's turn" do
    sign_in_and_play
    expect(page).to have_content "Rosie's turn"
  end
end


feature 'Attack player' do

  scenario 'reduce player 1 HP' do
    sign_in_and_play
    attack
    expect(page).to have_content 'Rosie: 50HP'
  end

  scenario "it should now be Tim's turn" do
    sign_in_and_play
    attack
    expect(page).to have_content "Tim's turn"
  end

  scenario 'reduce player 1 and player 2 HP by 10' do
    sign_in_and_play
    attack
    attack
    expect(page).to have_content 'Rosie: 50HP'
  end

  scenario 'HP reduced to 0' do
    sign_in_and_play
    11.times {attack}
    expect(page).to have_content 'Game over: You lost'

  end

end
