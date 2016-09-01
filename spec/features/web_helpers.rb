
def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Laura'
    fill_in :player_2_name, with: 'Joseph'
    click_button 'Submit'
end
