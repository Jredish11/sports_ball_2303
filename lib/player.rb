class Player
  attr_reader :name, 
              :monthly_cost, 
              :contract_length, 
              :first_name, 
              :last_name,
              :nickname
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length 
    @first_name = name.split.first
    @last_name = name.split.last
    @nickname = nil
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def set_nickname!(nickname)
    @nickname = nickname
  end
end