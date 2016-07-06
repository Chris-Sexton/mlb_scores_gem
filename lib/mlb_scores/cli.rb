class MlbScores::CLI

  def call
    puts "Today's MLB Scores:"
    list_scores
    menu
    exit
  end

  def list_scores
    @scores = MlbScores::Scores.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the game you would like more info on or type list to see the list of games or type exit."
      input = gets.strip
      case input
      when "1"
        puts "More info on game 1."
      when "2"
        puts "More info on game 2."
      when "list"
        list_scores
      end
    end
  end

  def exit
    puts "Come back soon to see more MLB scores!"
  end
end