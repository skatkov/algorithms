
require 'test/unit'

class TC_MyTest < Test::Unit::TestCase
	def test_merge_sort
		assert [5,4,1,8,7,2,6,3].merge_sort.eql?([1,2,3,4,5,6,7,8]), "merge sort algorithm not working"
	end
end 

class Array
	def merge_sort

	end
end
