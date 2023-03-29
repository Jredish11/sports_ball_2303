class Team
  attr_reader :roster, :player_count
  def initialize(team, city)
    @roster = []
    @player_count = 0
  end
end