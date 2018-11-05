class Game
  attr_accessor :turn

  def initialize player1, player2
    @turn = player2
    @player1 = player1
    @player2 = player2
  end

  def start_game
    self.next_turn
  end

  def next_turn
    if !@player1.is_alive? || !@player2.is_alive?
      self.end_game
    else
      print "-----NEW TURN-----"
      self.turn = self.turn == @player1 ? @player2 : @player1
      puts
      this_question = Question.new
      puts "#{@turn.name}: #{this_question.ask_question}"
      response = gets.chomp.to_i
      unless this_question.evaluate_response? response
        puts "#{@turn.name}: WRONG!!!!!"
        @turn.deduct_life
      else
        puts "#{@turn.name}: CORRECT"
      end
      puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
      self.next_turn
    end
  end

  def end_game
    if @player1.is_alive?
      puts "Player 1 wins with a score of #{@player1.lives}/3"
      puts "-----GAME OVER-----"
    else
      puts "Player 2 wins with a score of #{@player2.lives}/3"
      puts "-----GAME OVER-----"
    end
  end
end