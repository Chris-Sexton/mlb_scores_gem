class MlbScores::CLI

  def call
    puts "Today's MLB Scores:"
    list_scores
    menu
    exit
  end

  def list_scores
    @scores = MlbScores::Scores.today
    @scores.each.with_index(1) do |score, i|
      puts "#{i} #{score.home}: #{score.home_score} - #{score.away}: #{score.away_score}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the game you would like more info on or type list to see the list of games or type exit."
      input = gets.strip.downcase

      if input.to_i > 0
        puts @scores[input.to_i-1]
      elsif input == "list"
        list_scores
      else
        puts "Please type list or exit."
      end
    end
  end

  def exit
    puts "Come back soon to see more MLB scores!"
  end
end