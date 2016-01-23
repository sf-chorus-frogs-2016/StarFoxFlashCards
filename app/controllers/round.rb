get '/round/:deck_id' do
  @round = Round.new
  @current_deck = Deck.find(params[:deck_id])
  @current_card = @current_deck.cards.first
  user = User.find_by(name: session[:username])
  user.rounds.create(deck: @current_deck.title)
  erb :'/rounds/show'
end

get "/round/:deck_id/:card_id" do
  @current_deck = Deck.find(params[:deck_id])
  @current_card = @current_deck.find(params[:card_id])
  # logic here for capturing correct_guesses and total_guesses
  # when do you finish the round
  erb :'/rounds/show'
end
