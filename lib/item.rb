require 'date'

class Item
  attr_accessor :publish_date, :archived, :id
  attr_reader :genre, :author, :source, :label

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..5000)
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
    @genre.items.push(self) unless @genre.items.include?(self)
  end

  def label=(label)
    @label = label
    @label.items.push(self) unless @label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    false unless Date.today.year - Date.parse(@publish_date).year > 10
  end
end
