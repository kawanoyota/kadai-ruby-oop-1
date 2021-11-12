class Team
  
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(win, lose, draw,name)
    self.win = win
    self.lose = lose
    self.draw = draw
    self.name = name
  end
 
  def calc_win_rate
    self.win / (self.win.to_f + self.lose)
  end

  def show_team_result
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{calc_win_rate}です。"
  end

end

giants = Team.new(67,45,87,"Giants")
tigers = Team.new(60,53,7,"Tigers")
dragons = Team.new(60,55,5,"Dragons")
bayStars = Team.new(56,58,12,"BayStars")
carp = Team.new(52,56,12,"Carp")
swallows = Team.new(41,69,10,"Swallows")

giants.show_team_result
tigers.show_team_result
dragons.show_team_result
bayStars.show_team_result
carp.show_team_result
swallows.show_team_result