class Player
	attr_reader :name, :symbol

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
	end

	def make_move?(position, board)
        if board.move_valid?(position)
            board.update(position, symbol)
            return true
        else
            return false
        end
    end
    
    def to_s
        "Player Name: #{name}; Symbol: #{symbol}"
    end

end