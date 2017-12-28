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

def calculator
  answer = 0
  indexed = []
  count = 0
  ARGV.each_with_index  do |arg, index|
    if(ARGV[index] == "+" && (indexed.include? index-1)==false)
      answer += ARGV[index-1].to_i
      indexed.push(index-1)
      answer += ARGV[index+1].to_i
      indexed.push(index+1)
    elsif(ARGV[index] == "+" && (indexed.include? index-1)==true)
      answer += ARGV[index+1].to_i
      indexed.push(index+1)
    end
    if(ARGV[index] == "-" && (indexed.include? index-1)==false && count == 0)
      answer += ARGV[index-1].to_i
      indexed.push(index-1)
      answer -= ARGV[index+1].to_i
      indexed.push(index+1)
      count += 1
    elsif(ARGV[index] == "-" && (indexed.include? index-1)==false)
        answer += ARGV[index-1].to_i
        indexed.push(index-1)
        answer -= ARGV[index+1].to_i
        indexed.push(index+1)
        count += 1
    elsif(ARGV[index] == "-" && (indexed.include? index-1)==true)
      answer -= ARGV[index+1].to_i
      indexed.push(index+1)
    end
    if(ARGV[index] == "0" )
      answer = 0;
      elsif(ARGV[index] == "$" && (indexed.include? index-1)==false)
        if(ARGV[index] == "$" && answer == 0)
          answer += 1
        end
        answer *= ARGV[index-1].to_i
        indexed.push(index-1)
        answer *= ARGV[index+1].to_i
        indexed.push(index+1)
      elsif(ARGV[index] == "$" && (indexed.include? index-1)==true)
        answer *= ARGV[index+1].to_i
        indexed.push(index+1)
      end
    if(ARGV[index] == "/" && (indexed.include? index-1)==false && count == 0)
      answer += ARGV[index-1].to_i
      indexed.push(index-1)
      answer /= ARGV[index+1].to_i
      indexed.push(index+1)
      count += 1
    elsif(ARGV[index] == "/" && (indexed.include? index-1)==false)
      answer /= ARGV[index-1].to_i
      indexed.push(index-1)
      answer /= ARGV[index+1].to_i
      indexed.push(index+1)
    elsif(ARGV[index] == "/" && (indexed.include? index-1)==true)
      answer /= ARGV[index+1].to_i
      indexed.push(index+1)
    end
  end
  puts answer
end

calculator
