class Item
  def initialize(genre:, author:, source:, label:, publish_date:, archived:)
    @id = Random.rand(1..1_000_000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    retrun true if can_be_archived?
  end

  private

  def can_be_archived?
    @publish_date > 10
  end
end
