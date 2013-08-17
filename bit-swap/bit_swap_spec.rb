require './bit_swap'

describe '#bit_array' do
  it 'is defined' do
    expect{bit_array(1)}.not_to raise_error
  end

  it 'returns an array of length 64' do
    expect(bit_array(0)).to be_a_kind_of Array
    expect(bit_array(0).length).to eq 64
  end

  it 'return only includes 1s and 0s' do
    array = bit_array(10239847)
    array.delete(0)
    array.delete(1)
    expect(array.length).to eq 0
  end
end

describe '#bit_value' do
  it 'returns a number' do
    expect(bit_value(1)).to be_a_kind_of Integer
  end

  it 'returns the value of bit at given index' do
    expect(bit_value(0)).to eq 1
    expect(bit_value(1)).to eq 2
    expect(bit_value(2)).to eq 4
    expect(bit_value(3)).to eq 8
  end
end

describe '#swap_bits' do
  it 'is defined' do
    expect{swap_bits(0,0,0)}.not_to raise_error
  end

  it 'returns a Fixnum' do
    expect(swap_bits(0,0,0)).to be_an_instance_of Fixnum
  end

  it 'returns the integer if the bits are the same' do
    int = 5000
    expect(swap_bits(int,0,63)).to eq int
  end

  it 'returns the correct value' do
    expect(swap_bits(1, 0, 1)).to eq 0
    expect(swap_bits(2, 0, 1)).to eq 1
    expect(swap_bits(3, 0, 1)).to eq 3
    expect(swap_bits(4, 0, 1)).to eq 4
    expect(swap_bits(5, 0, 1)).to eq 6
    # expect(swap_bits(5, 1, 2)).to eq 3
    # pending
  end
end
