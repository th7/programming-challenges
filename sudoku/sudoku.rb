module Sudoku
  # extend self

  class Board
    def initialize(array2d)
      @array2d = array2d
    end

    def valid?
      block_groups.each do |blocks|
        blocks.each do |block|
          set = Set.new(block)
          return false unless set.count == block.length
        end
      end
      true
    end

    def solved?
      valid? && tiles.all? {|t| (1..9).include?(t)}
    end

    def rows
      @array2d
    end

    def columns
      @array2d.transpose
    end

    def cells
      cells = [[],[],[],[],[],[],[],[],[]]
      @array2d.each_with_index do |row, i|
        row.each_with_index do |tile, j|
          cells[j/3 + (i/3)*3] << tile
        end
      end
      cells
    end

    def tiles
      @array2d.flatten
    end

    def block_groups
      [rows, columns, cells]
    end
  end

end
