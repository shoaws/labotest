# num=7
# count=0
# while num<=7777777-7 do
#     num+=7
#     num_to_s=num.to_s
#     count_num=num_to_s.chars.map(&:to_i)
#     for i in count_num do
#         if i==7
#             count+=1
#         end
#     end
# end

# puts(count+1)



def fibonacci(num)
  # 再帰終了条件
  if num == 0
    return 0
  # 再帰終了条件
  elsif num == 1
    return 1
  else
    # 再帰呼び出し
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end
# 第 0 項から第 9 項までを出力
(0..9).each do |i|
  puts "第 #{i} 項： #{fibonacci(i)}"
end

#トリボナッチ
puts "求めたい数字を入力して下さい"
puts "１つ目の数字"
a = gets.to_i
puts "２つ目の数字"
b = gets.to_i
puts "３つ目の数字"
c = gets.to_i
puts "何番目の数字を求めますか？"
t = gets.to_i

n = 0
while n < (t - 3)
  d = a + b + c
  a = b
  b = c
  c = d
  n += 1
end

puts "#{t}番目の数は#{c}です"


def sum_of_pythagoras(sum)
  a = 1; b, c = a+1, a+2
  limit = sum
  loop do
    if (a + b + c) == sum and pythagoras?(a, b, c)
      return a, b, c
    end
    c += 1
    if c > limit
      b += 1; c = b + 1
    end
    if b > limit/2
      a += 1; b = a + 1; c = b + 1
    end
    return nil if a > limit/3
  end
end
def pythagoras?(a, b, c)
  return true if (a ** 2 + b ** 2) == c ** 2
  false
end
t =  Time.now
a, b, c = sum_of_pythagoras(1000)
puts "#{a} * #{b} * #{c} = #{a*b*c}" # => "200 * 375 * 425 = 31875000"
