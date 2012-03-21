
require 'test/unit'


class TC_MyTest < Test::Unit::TestCase
	def test_merge_sort
		assert [5,4,1,8,7,2,6,3].merge_sort.eql?([1,2,3,4,5,6,7,8])
		assert [6,7,4,5,3,1,2].merge_sort.eql?([1,2,3,4,5,6,7])
		
	end

	def test_merge_sort_with_duplicate_values
		assert [2,2,1,4,5,3,7,8,0, 9,0].merge_sort.eql?([0,0,1,2,2,3,4,5,7,8,9])
	end
end

class Array

	def merge_sort
		return self if self.count.eql?(1)
		merge(self[0..self.count/2-1].merge_sort, self[self.count/2..self.count-1].merge_sort)
	end

	def merge(a, b)
		c = []

		while !a.empty? && !b.empty?
			if a[0] < b[0]
				c << a[0]
				a.delete_at(0)
			elsif a[0] > b[0]
				c << b[0]
				b.delete_at(0)
			elsif a[0].eql?(b[0])
				c << a[0]; c << b[0]
				a.delete_at(0); b.delete_at(0)
			end
		end

		while !a.empty?
			c.push(a[0]); a.delete_at(0)
		end

		while !b.empty?
			c.push(b[0]); b.delete_at(0)
		end

		return c
	end
end