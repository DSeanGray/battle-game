
feature 'Switch turns' do
  scenario 'Player can see whose turn it is' do
    sign_in_and_play
    expect(page).to have_content "Sam's Turn"
  end
end
