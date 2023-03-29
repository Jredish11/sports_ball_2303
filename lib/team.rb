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

  def details
    details_hash = {
      "total_value" => total_value, 
      "player_count" => @player_count
     }
  end

  def average_cost_of_player
    avg_cost = total_value / @player_count
    avg_cost = avg_cost.to_s
    avg_cost.insert(0, "$")
    avg_cost.insert(3, ',')
    avg_cost.insert(7, ',')
    avg_cost
  end

  def players_by_last_name
    @roster.map do |player|
      player.last_name
    end.sort.join(', ')
  end
end