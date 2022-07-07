require 'date'
class Item
  attr_reader :id, :label
  attr_accessor :publish_date, :archived

  def initialize(publish_date)
    @id = rand(1..100)
    @publish_date = publish_date
    @archived = false
    @label = nil
    @genre = nil
  end

  def can_be_archived?
    (Time.new.year - Date.parse(@publish_date).year) > 10
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end

  def add_label(label)
    @label = label
    label.add_item(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.add_item(self)
  end
end
