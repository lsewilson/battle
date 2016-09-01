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
    attack
    expect(page).to have_content 'You attacked player 2!'
  end

  scenario 'reduce player 1 HP' do
    sign_in_and_play
    attack
    expect(page).to have_content 'Rosie: 50HP'
  end

  scenario 'reduce player 1 and player 2 HP by 10' do
    sign_in_and_play
    attack
    attack
    expect(page).to have_content 'Rosie: 50HP'
  end

end
