

describe 'Name form fill', :type => :feature do 
	it 'Displays names submitted through form' do
		visit '/'
		within('form') do
			fill_in 'player_1', with: "Sam"
			fill_in 'player_2', with: "David"
		end
		click_button 'Submit'
		expect(page).to have_content 'Sam, David'
	end
end

