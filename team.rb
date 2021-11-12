class Team
  
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(win, lose, draw,name)
    self.win = win
    self.lose = lose
    self.draw = draw
    self.name = name
  end
 
  def calc_win_rate(name)
    self.win / (self.win.to_f + self.lose)
  end
  
  def show_team_result(name)
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{calc_win_rate(name)}です。"
  end

end

Giants = Team.new(67,45,87,"Giants")
Tigers = Team.new(60,53,7,"Tigers")
Dragons = Team.new(60,55,5,"Dragons")
BayStars = Team.new(56,58,12,"BayStars")
Carp = Team.new(52,56,12,"Carp")
Swallows = Team.new(41,69,10,"Swallows")

Giants.show_team_result(Giants)
Tigers.show_team_result(Tigers)
Dragons.show_team_result(Dragons)
BayStars.show_team_result(BayStars)
Carp.show_team_result(Carp)
Swallows.show_team_result(Swallows)