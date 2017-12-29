def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

 # problem here is that if someone types
 # a string with no numbers in it,
 # or a string of nonsense with letters and numbers
 # it returns a 0... 
 # the function then converts the 0 to an integer.
 # we want the function to exit if there's any non numbers entered,
 # or if the number begins with 0 and has a length greater than 1


 if choice.include?('0') || choice.include?('1')
    how_much = choice.to_i
  else
    dead("Man, learn to type a number")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"

  bear_moved = false

  while true #infinite loop
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I have no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you have great evil Cthulhu."
  puts "He, it, whatever, stares at you and you go insane."
  puts "Do you flee for your life or do you eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start #goes back to start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0) #aborts with no error
end


def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room #run bear_room
  elsif choice == "right"
    cthulhu_room #run cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

#runs the start function
start