class Genre
  attr_accessor :name
  attr_reader :items

  def initialize(name)
    @name = name
    @items = []
    @id = rand(1..100)
  end

  def add_item(item)
    @items << item
  end
end
