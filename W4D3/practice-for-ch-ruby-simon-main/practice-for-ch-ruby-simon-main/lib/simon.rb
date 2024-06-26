class Simon
  COLORS = %w(red blue green yellow)
 
  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    
    take_turn until game_over
    self.game_over_message
    self.reset_game

  end

  def take_turn

    show_sequence
    require_sequence

    unless @game_over
      self.round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    self.add_random_color

    seq.each do |color|
      puts color
    end
  end

  def require_sequence

    arr = []

    sequence_length.times do
      p "Enter a color"
      arr << gets.chomp
    end

    arr
  end

  def add_random_color

    @seq << COLORS.sample

  end

  def round_success_message
    puts "Congrats!!! Get ready for the next round..."
  end

  def game_over_message
    puts "Game Over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

end