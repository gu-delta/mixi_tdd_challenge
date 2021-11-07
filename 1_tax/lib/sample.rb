
class Tax
  def calc(array)
	sum = 0
	# array.each do |p|
	# 	sum += p
	# end
	sum = array.sum
	sum *= 1.1
	sum = sum.round
	return sum
  end
end

