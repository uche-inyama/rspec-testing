require_relative '../lib/my_enumerable'

RSpec.describe Enumerable do 
	it "return the elements in an array" do
		arr = [1,2,3,5]
		expect(arr.my_each {|x| x+2} ).to eql(0...4)
	end

	it "return the elements in the array that true" do
		arr = [1,2,3,6]
		expect(arr.my_select {|x| x.even?}).to eql([2, 6])
	end

	it "return true if length of element is greater or equal three" do
		arr = ["dog", "cat", "elephant", "Lizard"]
		expect(arr.my_all? {|x| x.length >= 3}).to eql(true)
	end

	it "return false if the length of the element is greater than 10" do
		arr = ["dog", "cat", "elephant", "Lizard"]
		expect(arr.my_all? {|x| x.length > 10}).to eql(false)
	end	

	it "return true if the length of the element is greater than 10" do
		arr = ["dog", "cat", "elephant", "Lizard"]
		expect(arr.my_any? {|x| x.length >= 8}).to eql(true)
	end

	it "return false if the length of the element is greater than 10" do
		arr = [3, 9, 11]
		expect(arr.my_any? {|x| x.even?}).to eql(false)
	end

	it "return true if none of the element in the array is even" do
		arr = [3, 9, 11]
		expect(arr.my_none? {|x| x.even?}).to eql(true)
	end

	it "return false if one of the element in the array is even" do
		arr = [3, 2, 11]
		expect(arr.my_none? {|x| x.even?}).to eql(false)
	end

	it "return count of a given element in an array or length of an array" do
		arr = [1,1,3,6]
		expect(arr.my_count {|x| x%3 == 0}).to eql(2)
	end

	it "return count of a given element in an array or length of an array" do
		arr = [1,1,1,3,6]
		expect(arr.my_count(1)).to eql(3)
	end

	it "return count of a given element in an array or length of an array" do
		arr = [1,1,3,6]
		expect(arr.my_count).to eql(4)
	end

	it "return a new array with multiples of 3" do
		arr = [1,1,3,6]
		expect(arr.my_map {|x| x*3}).to eql([3,3,9,18])
	end

	it "return the sum of elements in the array" do
		arr = [1,1,3,6]
		expect(arr.my_inject { |sum, n| sum + n }).to eql(11)
	end	

	it "return the sum of elements in the array" do
		arr = [1,1,3]
		expect(arr.inject(1) { |product, n| product * n }).to eql(3)
	end
end