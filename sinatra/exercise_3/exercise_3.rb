require "sinatra"

class Calculator
  def initialize(x, y = 0)
    @x = x
    @y = y
  end

  def sum
    @x + @y
  end
end

get '/sum' do
  Calculator.new(params[:x], params[:y]).sum
end