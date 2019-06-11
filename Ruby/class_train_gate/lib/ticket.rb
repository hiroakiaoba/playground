class Ticket
  attr_accessor :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  def stamp(gate_name)
    @stamped_at = gate_name
  end
end