# Minitest

require 'minitest/autorun'

class Spec
  def self.greeting
    'Hello'
  end
end

class FrSpec < MiniTest::Unit::TestCase
  def fr_greeting
    assert_equal 'Hello', Sepc.greeting
  end
end





require 'minitest/autorun'

class Spec
  def self.greeting
    'Hello'
  end
end

class FrSpec < Minitest::Test
  def spec_greeting
    assert_equal 'Hello', Spec.greeting
  end
end






