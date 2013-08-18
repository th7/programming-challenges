require './sudoku'
include Sudoku

VALID_BOARD = [
[1,4,7,2,5,8,3,6,9],
[2,5,8,3,6,9,4,7,1],
[3,6,9,4,7,1,5,8,2],
[4,7,1,5,8,2,6,9,3],
[5,8,2,6,9,3,7,1,4],
[6,9,3,7,1,4,8,2,5],
[7,1,4,8,2,5,9,3,6],
[8,2,5,9,3,6,1,4,7],
[9,3,6,1,4,7,2,5,8]
]

INVALID_BOARD = [
[1,1,7,2,5,8,3,6,9],
[2,5,8,3,6,9,4,7,1],
[3,6,9,4,7,1,5,8,2],
[4,7,1,5,8,2,6,9,3],
[5,8,2,6,9,3,7,1,4],
[6,9,3,7,1,4,8,2,5],
[7,1,4,8,2,5,9,3,6],
[8,2,5,9,3,6,1,4,7],
[9,3,6,1,4,7,2,5,8]
]

describe 'Sudoku' do

  describe 'Board' do
    before do
      @valid_board = Board.new(VALID_BOARD)
      @invalid_board = Board.new(INVALID_BOARD)
    end

    describe '#valid?' do
      it 'returns true or false indicating whether a board is valid' do
        expect(@valid_board.valid?).to be_true
        expect(@invalid_board.valid?).to be_false
      end
    end

    describe '#rows' do
      it 'returns an array representing row[x]' do
        expect(@valid_board.rows[0]).to eq VALID_BOARD[0]
        expect(@valid_board.rows[5]).to eq VALID_BOARD[5]
      end
    end

    describe '#columns' do
      it 'retruns an array representing column[x]' do
        expect(@valid_board.columns[0]).to eq [1,2,3,4,5,6,7,8,9]
        expect(@valid_board.columns[5]).to eq [8,9,1,2,3,4,5,6,7]
      end
    end

    describe '#cells' do
      it 'returns an array representing cell[x]' do
        expect(@valid_board.cells[0]).to eq [1,4,7,2,5,8,3,6,9]
        expect(@valid_board.cells[5]).to eq [6,9,3,7,1,4,8,2,5]
      end
    end

    describe '#block_groups' do
      it 'returns an array [rows, columns, blocks]' do
        expect(@valid_board.block_groups).to eq [@valid_board.rows, @valid_board.columns, @valid_board.cells]
      end
    end
  end
end
