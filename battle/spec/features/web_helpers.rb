def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Rosie'
  fill_in :player_2_name, with: 'Tim'
  click_button 'Submit'
end

def attack
  click_button 'Attack'
end
