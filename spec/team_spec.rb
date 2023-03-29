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

end



# pry(main)> team.player_count
# #=> 0

# pry(main)> player_1 = Player.new("Michael Palledorous" , 1000000, 36)
# #=> #<Player:0x00007fa53b9ca0a8...>

# pry(main)> player_2 = Player.new("Kenny DeNunez", 500000, 24)
# #=> #<Player:0x00007fccd2985f48...>

# pry(main)> team.add_player(player_1)

# pry(main)> team.add_player(player_2)

# pry(main)> team.roster
# #=> [#<Player:0x00007fa53b9ca0a8...>, #<Player:0x00007fccd2985f48...>]

# pry(main)> team.player_count
# #=> 2