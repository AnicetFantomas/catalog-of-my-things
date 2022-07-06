require './item'
require 'date'

class Game < Item
    def initialize (multiplayer, last_played_at)
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_achieved? 
        (super == true || (Time.new.year - Date.parse(@last_played_at).year) > 2)
    end
end