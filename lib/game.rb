require_relative './item'
require 'date'

class Game < Item
    attr_accessor :multiplayer, :last_played_at

    def initialize (multiplayer, last_played_at, publish_date)
        super(publish_date)
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_archived?
        (super == true || (Time.new.year - Date.parse(@last_played_at).year) > 2)
    end
end