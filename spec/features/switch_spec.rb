require 'spec_helper'

feature 'switch attacker and opponent' do

  scenario 'player 1 attacked, and now player 2 becomes player 1' do
    sign_in_and_play
    click_button("Attack")
    click_button("Switch")
    expect(page).to have_content("Laura: 100HP")
  end



end
