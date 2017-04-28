
feature 'Switch turns' do
  scenario 'Player can see whose turn it is' do
    sign_in_and_play
    expect(page).to have_content "Sam's Turn"
  end

  scenario 'game knows whose turn it is' do
    sign_in_and_play
    expect($game.current_player.name).to eq 'Sam'
  end
end
