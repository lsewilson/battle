
require 'spec_helper'

feature 'Enter name' do

  scenario 'User adds name' do
    visit '/'

    fill_in('player_1', with: 'James')
    fill_in('player_2', with: 'Laura')
    click_button("Submit")

    expect(page).to have_content('James vs Laura')
  end

  feature 'Hit points' do
    scenario 'Player 1 sees Player 2s hit points' do
      visit '/'

      fill_in('player_1', with: 'James')
      fill_in('player_2', with: 'Laura')
      click_button("Submit")

      expect(page).to have_content('Laura: 100HP')

    end
  end
end
