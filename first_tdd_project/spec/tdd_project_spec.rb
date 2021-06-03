require 'rspec'
require 'tdd_project'

describe 'remove_dups' do
  describe '#my_uniq' do
    subject(:arr) { [1, 2, 3, 3, 4, 4] }
    subject(:arr2) { [1, 2, 3, 2, 1, 4] }

    it 'takes in an array as argument' do
      expect { my_uniq }.to raise_error(ArgumentError)
    end

    it 'should remove duplicates' do
      expect(my_uniq(arr)).to eq([1, 2, 3, 4])
      expect(my_uniq(arr2)).to eq([1, 2, 3, 4])
    end

    it 'should return a new array' do
      expect(my_uniq(arr)).not_to be(arr)
    end
  end
end

describe Array do
  describe '#two_sum' do
    subject(:arr) { [-1, 0, 2, -2, 1] }
    subject(:arr2) { [0, -2, -3, 2, 3] }

    it 'finds pairs of positions where the elements sum to zero' do
      expect(arr2.two_sum).to eq([[1, 3], [2, 4]])
    end

    it 'should return pairs in ascending order' do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end

describe "#my_transpose" do
    subject(:matrix) { [ [1,2,3], [4,5,6], [7,8,9] ] }
    let(:new_matrix) { [ [1,4,7], [2,5,8], [3,6,9] ] }

    before(:each) do
        expect(matrix).not_to receive(:transpose)
    end

    it "should return a 2-d array" do
        expect( my_transpose(matrix).all?{ |arr| arr.is_a?(Array)} ).to eq(true)
        expect( my_transpose(matrix).is_a?(Array) ).to eq(true)
    end

    it "should return a new matrix containing ele at the same index" do
        # result=matrix.transpose
        expect( my_transpose(matrix) ).to eq(new_matrix)
    end




end


