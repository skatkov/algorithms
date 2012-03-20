
require 'test/unit'

class TC_MyTest < Test::Unit::TestCase
	def test_merge_sort
		assert [5,4,1,8,7,2,6,3].merge_sort.eql?([1,2,3,4,5,6,7,8])
	end
end 

class Array
	def merge_sort
		return self if self.count.eql?(1)

		#divide array two parts 
		a = self[0..self.count/2-1]
		b = self[self.count/2..self.count-1]

		merge( a.merge_sort, b.merge_sort)
	end

	def merge(a, b)
		c = []
		i = 0
		j = 0

		(a.count + b.count).times do |time| 
			if a[i] < b[j]
				c[time] = a[i];	i=i+1
			elsif a[i] > b[j]
				c[time] = b[j]; j=j+1 
			end
			puts c.inspect
		end
		return c
	end
end
