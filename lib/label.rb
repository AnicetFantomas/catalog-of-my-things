require_relative 'item'

class Label
  attr_reader :items
  attr_accessor :color, :title

  def initialize(title, color)
    @id = rand(1..100)
    @color = color
    @title = title
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
