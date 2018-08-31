class Spec
  def self.greeting
    'Hello'
  end
end

describe Spec do
  example 'greeting' do
	  expect(Spec.greeting).to eq 'Hello'
  end
end



