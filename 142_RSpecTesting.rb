# /example_project
#   ├── lib
#   │   ├── add.rb
#   │   └── prime.rb
#   └── spec
#       ├── add_spec.rb
#       └── prime_spec.rb


# /spec/add_spec.rb

require "add" # this line will include code from "/lib/add.rb"

describe "add method" do
  it "should accept two numbers as arguments" do
    expect { add(2, 3) }.to_not raise_error
  end

  it "should return the sum of the two numbers" do
    expect(add(2, 3)).to eq(5)
    expect(add(10, 12)).to eq(22)
  end
end


# /lib/add.rb
def add(num_1, num_2)
  num_1 + num_2
end


# /spec/prime_spec.rb
require "prime"

describe "prime? method" do
  it "should accept a number as an argument" do
    expect { prime?(7) }.to_not raise_error
  end

  context "when the number is prime" do
    it "should return true" do
      expect(prime?(7)).to eq(true)
      expect(prime?(11)).to eq(true)
      expect(prime?(13)).to eq(true)
    end
  end

  context "when the number is not prime" do
    it "should return false" do
      expect(prime?(4)).to eq(false)
      expect(prime?(9)).to eq(false)
      expect(prime?(20)).to eq(false)
      expect(prime?(1)).to eq(false)
    end
  end
end


##### Here are the core RSpec terms you'll see in every spec file:

# describe names the method being tested
# it expresses the expected behavior of the method being tested
# expect shows how that behavior is tested

