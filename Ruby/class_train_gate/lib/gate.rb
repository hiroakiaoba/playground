class Gate
  attr_accessor :name

  STATIONS = [:sinden, :gamo, :sinkosigaya]
  FARES = [140, 300]

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    calc_fare(ticket)
  end

  def calc_fare(ticket)
    enter_index = STATIONS.index(ticket.stamped_at)
    exit_index = STATIONS.index(@name)
    distance = exit_index - enter_index
    FARES[distance - 1] <= ticket.fare
  end

end