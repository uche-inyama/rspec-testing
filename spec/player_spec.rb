require './lib/player'
require './lib/board'

describe Player do
    describe "#make_move?" do
        it "marks a valid spot on the board" do
            player = Player.new("Abc", "X")
            board = Board.new
            expect(player.make_move?(board, "3")).to eql(true)
        end
    end
end