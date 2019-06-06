require './lib/gate.rb'
require './lib/ticket.rb'
require 'minitest/autorun'

class BoardScenarioTest < Minitest::Test

  def setup
    @sinden = Gate.new(:sinden)
    @gamo = Gate.new(:gamo)
    @sinkosigaya = Gate.new(:sinkosigaya)
  end

  def test_sinden_to_gamo
    ticket = Ticket.new(140)
    @sinden.enter(ticket)
    assert @gamo.exit(ticket)
  end

  def test_sinden_to_gamo_with_enough_fare
    ticket = Ticket.new(300)
    @sinden.enter(ticket)
    assert @sinkosigaya.exit(ticket)
  end

  def test_sinden_to_gamo_with_not_enough_fare
    ticket = Ticket.new(140)
    @sinden.enter(ticket)
    refute @sinkosigaya.exit(ticket)
  end

  def test_gamo_to_sinkosigaya
    ticket = Ticket.new(140)
    @gamo.enter(ticket)
    assert @sinkosigaya.exit(ticket)
  end

end