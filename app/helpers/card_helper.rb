helpers do
  def already_seen?
    !!Guess.find_by(game_id: @game.id, user_id: session[:id], card_id: params[:card_id])
  end

  def record_guess(args)
    correct = args[:correct]
    first_guess_correct = args[:first_guess_correct]
    Guess.create(correct: correct, first_guess_correct: first_guess_correct, game_id: @game.id, user_id: session[:id], card_id: params[:card_id])
  end
end
