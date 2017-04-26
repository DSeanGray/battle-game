

def sign_in_and_play

	visit '/'
	within('form') do
		fill_in 'player_1', with: "Sam"
		fill_in 'player_2', with: "David"
	end
	click_button 'Submit'

end
