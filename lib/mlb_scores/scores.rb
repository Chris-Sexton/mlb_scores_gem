class MlbScores::Scores
  attr_accessor :home, :home_score, :away, :away_score

  def self.today
    puts <<-HEREDOC
      Game 1 Home Team - Score: - Away Team - Score:
      Game 2 Home Team - Score: - Away Team - Score:
    HEREDOC

    game_1 = self.new
    game_1.home = "Boston Red Sox"
    game_1.home_score = "10"
    game_1.away = "Texas Rangers"
    game_1.away_score = "0"

    game_2 = self.new
    game_2.home = "Los Angeles Dodgers"
    game_2.home_score = "7"
    game_2.away = "Baltimore Orioles"
    game_2.away_score = "3"

    [game_1, game_2]

  end
end
