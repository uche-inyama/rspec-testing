class Player
	attr_reader :name, :symbol

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
	end

	def move_valid?(position)
        ("1".."9").include? position
    end
    
    def to_s
        "Player Name: #{name}; Symbol: #{symbol}"
    end

end