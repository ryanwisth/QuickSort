#!/usr/bin/env ruby
a = [4,53,2,3222,4005,3,122,17,0,45]
b = Array.new
x = 0
pivot =0
change = 0
len = a.length-1
count = 0
y = a.length-1
q=0
def right(a, pivot, len)
	a.insert(pivot, a[len])
 	a.insert(len+1, a[pivot+1])
 	a.delete_at(pivot+1)
	a.delete_at(len+1)

end
def left(a, pivot, len)
	a.insert(pivot, a[len])
	a.insert(len+1, a[pivot+1])
	a.delete_at(pivot+2)
	a.delete_at(len)


end
if change > 0

else
while count <  y 
	if pivot < len
	if a[pivot] < a[len]
	len -= 1
	count+=1
else
right(a, pivot, len)
	x = len
	len = pivot +1
	pivot = x
	count += 1
end

else
	if a[pivot] > a[len]
	len +=1
	count+=1
else
	left(a, pivot, len)
	x = len
	len = pivot -1
	pivot = x
	count +=1
end
end
b.insert(pivot, a[pivot])

end
change +=1
end
c = a[0..pivot-1]
d = a[pivot+1..a.length-1]
a = Array.new
a = [c, d]

puts a

