require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a Team
  end

  it 'has an empty roster' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end

  it 'has a player_count method' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  it 'adds players to the roster, counts players' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)

    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it 'adds more players, makes list of long term and short term players' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.long_term_players).to eq([player_1, player_3])
    expect(team.short_term_players).to eq([player_2, player_4])
  end

end



# Player is considered a long term player if their contract length is greater than two years.
# Player is considered a short term player if their contract length is two years or less.
# total_value is the total cost of all of the players.







# pry(main)> team.long_term_players
# #=> [#<Player:0x00007fa53b9ca0a8...>, #<Player:0x00007fccd383c2d0...>]

# pry(main)> team.short_term_players
# #=> [#<Player:0x00007fccd297dc30...>, #<Player:0x00007fccd2985f48...>]

# pry(main)> team.total_value
# #=> 85200000

# pry(main)> team.details
# #=> {"total_value" => 85200000, "player_count" => 4}




