require "rspec"
require "tdd_project"

describe "remove_dups" do
    describe "#my_uniq" do
        subject(:arr) { [1,2,3,3,4,4] }
        subject(:arr2) { [1,2,3,2,1,4] }

        it "takes in an array as argument" do
            expect { my_uniq(arr) }.not_to raise_error(ArgumentError) 
        end

        it "should remove duplicates" do
            expect(my_uniq(arr)).to eq([1,2,3,4])
            expect(my_uniq(arr2)).to eq([1,2,3,4])
        end

        it "should return a new array" do
            expect(my_uniq(arr)).not_to be(arr)
        end

    end
end


