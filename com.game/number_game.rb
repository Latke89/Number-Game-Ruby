class NumberGame

  puts "How many times would you like to play the number game?"
  playTimes = Integer(gets.chomp)
  puts "We will play #{playTimes} times!"
  count = 0
  userWin = 0
  computerWin = 0

  loop do
    begin

      puts "Please choose a number between 0 and 10"
      userNumber = Integer(gets.chomp)
    rescue ArgumentError
      puts "Please input a number"
    end

    puts "You chose #{userNumber}"
    computerNumber = rand(0 .. 10)
    puts  "The computer chose #{computerNumber}"
    if (userNumber > computerNumber)
      puts "You beat the computer! Great job!"
      count += 1
      userWin += 1
    else
      puts "The computer won, try again!"
      count += 1
      computerWin += 1
    end
    break if count == playTimes
  end
  puts "You won #{userWin} times, and the computer won #{computerWin} times."

end