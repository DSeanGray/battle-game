
feature 'Switch turns' do
  scenario 'Player can see whose turn it is' do
    sign_in_and_play
    expect(page).to have_content "Sam's Turn"
  end

  scenario 'Player can see whose turn it is after attack' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "David's Turn"
  end
end
