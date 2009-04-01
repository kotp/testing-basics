#!/usr/bin/env ruby -w
class Dog
  attr_accessor :name, :pacifist
  def initialize(name, pacifist = false)
    @name = name
    @pacifist = pacifist
  end
  
  def bark
    "<<warf! warf!>>"
  end
  
  def eat
    "<<slurp!!!>>"
  end
  
  def chase_cat
    @pacifist ? "<<crossed her paws on her eyes as a sign of dissaproval>>" : "<<grrr!!!>>"
  end
  
  def wants_to_wag
    wag if self.name == "Zita"
  end
  
  private
  def wag
    "<<with a wage of her tail>>"
  end
end

def Dog.snore
  "<<fall asleep snoring like a mad>>"
end

d = Dog.new('Leo')
dd = Dog.new('Zita', pacifist = true)
def dd.taping
  "<<tap, tap, tap>>"
end

if __FILE__ == $0
puts "When I returned home #{d.name} and #{dd.name} welcomed me with great #{d.bark}." +
" Soon I gave them some food and they began to eat quietly with huge #{d.eat} " +
"when a cat came in. As soon as #{d.name} saw her, he chased her with threatening #{d.chase_cat}, " + 
" meanwhile #{dd.name}, which is a #{dd.pacifist} pacifist dog, #{dd.chase_cat}. " + 
"I was so angry with #{d.name}, that I shouted at him with many " + 
"#{d.instance_variable_set(:@name, "<<Leo, the most stupid dog in the world!>>")}. " + 
"After a while he returned to me with such innocent eyes that I could not resist and named him again " + 
"#{d.name="Leo"}. He then #{Dog::snore}. It was when #{dd.name} taped frenetically at the door " + 
"#{dd.taping} #{dd.wants_to_wag} to make me understand that she wanted me to take her out."
end