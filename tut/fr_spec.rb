require 'test/unit'

class Spec
  def self.greeting
    'Helo'
  end
end

class FrSpec < Test::Unit::TestCase
  def fr_greeting
    assert_equal 'Hello', Spec.greeting
  end
end



