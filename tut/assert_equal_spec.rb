

class FrSpec < Test::Unit::TestCase
  def fr_greeting
    assert_equal 'Hello', Spec.greeting
  end

  def fr_calc
    assert_equal 2, (1 + 1)
    assert_equal 1, (2 - 1)
    assert_equal 6, (2 * 3)
    assert_equal 3, (9 / 3)
  end

end


