class Game
  def initialize
    puts "Enter Player 1 name:"
    player_one_name = gets.chomp
    puts "Enter Player 2 name:"
    player_two_name = gets.chomp
    @playerOne = Player.new(player_one_name)
    @playerTwo = Player.new(player_two_name)
  end

  def play_game
    while @playerOne.lives > 0 and @playerTwo.lives > 0 
      numberOne = rand(1..6)
      numberTwo = rand(1..6)
      answer = numberOne + numberTwo
      puts "--------------- \n"
      
      puts "#{@playerOne.name}: What is #{numberOne} + #{numberTwo}?"
      playerAnswer = gets.to_i
      
      # puts playerAnswer.class
      # puts "player #{@playerOne.name} answer: #{playerAnswer}"  
      # puts "correct answer: #{answer}"
      # puts "#{@playerOne.name} lives before answer: #{@playerOne.lives} "
      # puts "#{@playerTwo.name} lives before answer: #{@playerTwo.lives} "

      if(playerAnswer == answer)
        if(@playerOne.lives > 1)
          puts "Correct! #{@playerOne.name} has #{@playerOne.lives} lives left."
        else 
          puts "Correct! #{@playerOne.name} has #{@playerOne.lives} live left."
        end
      end

      if(playerAnswer != answer)
        @playerOne.lives -= 1       
        if(@playerOne.lives > 1)
          puts "Incorrect.. #{@playerOne.name} has #{@playerOne.lives} lives left."
        else 
          puts "Correct! #{@playerOne.name} has #{@playerOne.lives} live left."
        end
        if(@playerOne.lives == 0)
        puts "#{@playerTwo.name} Wins, #{@playerOne.name} Loses"
          break
        end
      end

      # puts "#{@playerOne.name} lives after answer: #{@playerOne.lives} "
      # puts "#{@playerTwo.name} lives after answer: #{@playerTwo.lives} "
      puts "--------------- \n"

      numberOne = rand(1..11)
      numberTwo = rand(1..11)
      answer = numberOne + numberTwo

      puts "#{@playerTwo.name}: What is #{numberOne} + #{numberTwo}?"
      playerAnswer = gets.to_i
      # puts playerAnswer.class
      # puts "player #{@playerTwo.name} answer: #{playerAnswer}"
      # puts "correct answer: #{answer}"

      if(playerAnswer == answer)
        if(@playerTwo.lives > 1)
          puts "Correct! #{@playerTwo.name} has #{@playerTwo.lives} lives left."
        else 
          puts "Correct! #{@playerTwo.name} has #{@playerTwo.lives} live left."
        end
      end

      if(playerAnswer != answer)
        @playerTwo.lives -= 1
        if(@playerOne.lives > 1)
          puts "Incorrect.. #{@playerTwo.name} has #{@playerTwo.lives} lives left."
        else 
          puts "Correct! #{@playerTwo.name} has #{@playerTwo.lives} live left."
        end

        # puts "#{@playerTwo.name} lives after answer: #{@playerTwo.lives} "
        # puts "#{@playerOne.name} lives after answer: #{@playerOne.lives} "
         if(@playerTwo.lives == 0)
          puts "#{@playerOne.name} Wins, #{@playerTwo.name} Loses"
           break
         end
      end 
    end
  end
end
# ask player 1 question
# if wrong subtract live
# check if dead
# if dead end game
# ask player 2 question
# if wrong subtract live
# check if dead
# if dead end game