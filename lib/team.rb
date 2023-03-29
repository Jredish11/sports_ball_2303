class Team
  attr_reader :roster, :player_count
  def initialize(team, city)
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @roster << player
    @player_count += 1
  end

  def long_term_players
    @roster.select do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    @roster.select do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    @roster.sum do |player|
      player.contract_length * player.monthly_cost

    end
  end
end