

feature 'Name form fill', :type => :feature do
	scenario 'Displays names submitted through form' do
		sign_in_and_play
		expect(page).to have_content 'Sam vs David'
	end
end

feature 'View hit points' do
	scenario 'see Player 2 hit points' do
	    sign_in_and_play
	    expect(page).to have_content 'Sam: 60HP'
	end
end

feature 'Attack player' do
	it 'should allow one player to attack another and confirm attack' do
	    sign_in_and_play
	    click_button 'Attack!'
	    expect(page).to have_content 'Ouch!'
	end
end

