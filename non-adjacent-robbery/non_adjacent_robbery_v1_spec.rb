require 'rspec'
require './non_adjacent_robbery_v1'
include NonAdjacentRobbery

describe 'NonAdjacentRobbery v1' do
  describe '#rob' do
    it 'returns the maximum obtainable value without robbing adjacent houses' do

      expect(rob([1])).to eq 1

      expect(rob([1,2])).to eq 2
      expect(rob([2,1])).to eq 2

      expect(rob([1,2,3])).to eq 4
      expect(rob([3,2,1])).to eq 4
      expect(rob([2,3,2])).to eq 4
      expect(rob([3,2,3])).to eq 6
      expect(rob([10,1,10])).to eq 20

      expect(rob([1,2,3,4])).to eq 6
      expect(rob([4,3,2,1])).to eq 6
      expect(rob([1,3,4,2])).to eq 5
      expect(rob([4,1,2,3])).to eq 7
      expect(rob([10,1,2,3])).to eq 13
      expect(rob([1,3,10,2])).to eq 11

      expect(rob([1,2,3,4,5])).to eq 9
      expect(rob([5,4,3,2,1])).to eq 9
      expect(rob([1,4,5,3,2])).to eq 8
      expect(rob([5,3,1,2,4])).to eq 10
      expect(rob([1,4,10,3,2])).to eq 13
      expect(rob([10,3,1,2,10])).to eq 21

      expect(rob([1,2,3,4,5,6])).to eq 12
      expect(rob([6,5,4,3,2,1])).to eq 12
      expect(rob([6,4,2,1,3,5])).to eq 13
      expect(rob([1,3,5,6,4,2])).to eq 11
      expect(rob([10,4,2,1,3,10])).to eq 22
      expect(rob([1,3,5,10,4,2])).to eq 15

      expect(rob([1,2,3,4,5,6,7])).to eq 16
      expect(rob([7,6,5,4,3,2,1])).to eq 16
      expect(rob([6,4,2,1,3,5,7])).to eq 18
      expect(rob([1,3,5,7,6,4,2])).to eq 14
      expect(rob([15,4,2,1,3,5,15])).to eq 35
      expect(rob([1,3,5,15,6,4,2])).to eq 22
    end
  end
end
