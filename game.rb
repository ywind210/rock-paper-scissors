computer_hash = {0 => "rock", 1 => "paper", 2 => "scissors"}
player_hash = {5 => "rock", 4 => "paper", 3 => "scissors"}
player_win = 0
computer_win = 0
round = 1
while player_win < 2 && computer_win < 2
puts "==========ROUND #{round}=========="
  computer_output = computer_hash[rand(3)]

  player_output = nil
  while player_output == nil
    print "Choose rock (r), paper (p), or scissors (s) >"
    player_input = gets.chomp.downcase
    if player_input == "r" || player_input == "rock"
      player_output = player_hash[5]
    elsif player_input == "p" || player_input == "paper"
      player_output = player_hash[4]
    elsif player_input == "s" || player_input == "scissors"
      player_output = player_hash[3]
    else
      player_output = nil
      puts "An invalid input. Try again!"
    end
  end

  result = player_hash.key(player_output) + computer_hash.key(computer_output)
  puts "Player chose #{player_output}; Computer chose #{computer_output}"
  if result % 3 ==2
    puts "Tie in this round!"
  elsif result % 3 ==1
    puts "Because #{player_output} beats #{computer_output}, Player wins this round!"
    player_win += 1
  else
    puts "Because #{computer_output} beats #{player_output}, Computer wins this round!"
    computer_win += 1
  end
  puts "Player (#{player_win}) : Computer (#{computer_win})"

  round += 1
end

puts "Player won 2 rounds first. Player won this game!" if player_win == 2
puts "Computer won 2 rounds first. Computer won this game!" if computer_win == 2
