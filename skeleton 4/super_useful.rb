# PHASE 2
def convert_to_int(str)
  Integer(str)
rescue TypeError
  return nil
end

# PHASE 3

class FruitError < StandardError
  def message
    return "uh oh no fruit I like"
  end
end

FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit, coffee=nil)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
    return 
  else 
    raise FruitError.new()
    # same thing as raise FruitError 
  end
  rescue FruitError => e
    puts e.message
    puts "If you want to retry, give me coffeee!!!"
    puts "I only like lattes, nothing else."
    puts "Enter latte"
    lattes = gets.chomp
    if lattes.downcase.include?("latte")
      feed_me_a_fruit
    end
    retry
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

# PHASE 4

class InputError < StandardError; end
class MustFivePlusError < StandardError; end


class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise InputError "name?" if name.length == 0 
    @yrs_known = yrs_known
    raise MustFivePlusError "must be over 5 years to be besties" if yrs_known < 5
    @fav_pastime = fav_pastime
    raise InputError "input favorite past time" if fav_pastime.length == 0 
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} years. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


