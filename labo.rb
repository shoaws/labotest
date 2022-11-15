# #問１
# a = 1
# b = 0
# c = 5

# n = 0

# while n < (40 - 3) do
#   d = a + c
#   a = b
#   b = c
#   c = d
#   n += 1
# end

# puts "c"


# #問2
# result = 0
# n = [*1..77]
# o = n.each_slice(2).map(&:first)

# for i in o do
#   result = result + i ** 3
# end

# puts "#{result}"


#問3
# x = 1
# y = 3
# result = 0.to_f.round(4)
# count = 0
# while result < 3.1415 do
#   result = result + (8.to_f / (x.to_f * y.to_f)).round(4)
#   x += 4
#   y += 4
#   count += 1
# end

# puts "#{count}"