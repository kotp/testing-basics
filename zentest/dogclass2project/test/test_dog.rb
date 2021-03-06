# Code Generated by ZenTest v. 3.11.0
#                 classname: asrt / meth =  ratio%
#                       Dog:    0 /    4 =   0.00%
#                       Wag:    0 /    2 =   0.00%
#                      Zita:    0 /    6 =   0.00%

require 'test/unit' unless defined? $ZENTEST and $ZENTEST
require 'lib/dog'

class TestDog < Test::Unit::TestCase
  def test_class_snore
    assert_equal("<<fall asleep snoring like an owl>>",Dog.snore)
  end

  def test_bark
    dog = Dog.new('dog')
    assert_equal("<<warf! warf!>>",dog.bark)
  end

  def test_chase_cat
    dog = Dog.new('dog')
    assert_equal("<<grrr!!!>>", dog.chase_cat)
    dog = Dog.new('dog',true)
    assert_equal("<<crossed her paws on her eyes as a sign of disapproval>>", dog.chase_cat)
  end

  def test_eat
    dog = Dog.new('dog')
    assert_equal("<<slurp!!!>>",dog.eat)
  end

  def test_name_equals
    dog = Dog.new('dog')
    dog.name = 'dog1'
    assert_equal('dog1', dog.name)
    dog = Dog.new('dog1', true)
    dog.name = 'dog'
    assert_equal('dog', dog.name)
  end

  def test_pacifist
    dog = Dog.new('dog')
    assert_equal(false, dog.pacifist)
    dog = Dog.new('dog', true)
    assert_equal(true, dog.pacifist)
  end

  def test_pacifist_equals
    dog = Dog.new('dog')
    dog.pacifist = true
    assert_equal(true, dog.pacifist)
    dog = Dog.new('dog', true)
    dog.pacifist = false
    assert_equal(false, dog.pacifist)
  end
end

class TestWag < Test::Unit::TestCase
  def test_taping
    zita = Zita.new
    assert_equal("<<tap, tap, tap>>", zita.taping)
  end

  def test_wag
    zita = Zita.new
    assert_equal("<<with a wage of her tail>>", zita.wag)
  end
end

class TestZita < Test::Unit::TestCase
  def test_bark
    zita = Zita.new
    assert_equal("<<wouf! wouf!>>", zita.bark)
  end

  def test_breed
    zita = Zita.new
    assert_equal("labrador", zita.breed("labrador"))
  end
  
  def test_fetch_newspaper
    zita = Zita.new
    assert_equal("go and fetch <<Le Monde>>", zita.fetch_newspaper)
  end
end

# Number of errors detected: 15
