def add
  answer = 0
  ARGV.each do |arg|
  answer += arg.to_i
  end
  if(ARGV.length == 0)
    puts "You did not input any numbers."
  else
    puts answer
  end
end

def subtract
  answer = 0
  rest = []
  ARGV.each do |arg|
  answer = ARGV[0].to_i
  rest = ARGV[1..-1]
  end
  rest.each do |arg|
    answer -= arg.to_i
  end
  if(ARGV.length == 0)
    puts "You did not input any numbers."
  else
    puts answer
  end
end

def divide
  answer = 0
  rest = []
  ARGV.each do |arg|
  answer = ARGV[0].to_i
  rest = ARGV[1..-1]
  end
  rest.each do |arg|
    answer /= arg.to_i
  end
  if(ARGV.length == 0)
    puts "You did not input any numbers."
  else
    puts answer
  end
end

def multiply
  answer = 1
  ARGV.each do |arg|
  answer *= arg.to_i
  end
  if(ARGV.length == 0)
    puts "You did not input any numbers."
  else
    puts answer
  end
end

add
subtract
divide
multiply
