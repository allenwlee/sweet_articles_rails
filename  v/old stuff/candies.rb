b_prev = 1
greedy = [3,2,1]
greedy.reverse.each_with_index do |kid, i|
    if kid <= b_prev
      puts kid + 1
      b_prev = greedy[-1 - i] = kid + 1
    else
       break
    end
end

p greedy