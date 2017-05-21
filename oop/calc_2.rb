# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# my understanding of composition is that you are calling on a method from the 
# superclass in a way that changes the method you are defining in the sub class
# but in this example, there is nothing that uses the super class unless we needed
# to do something that added AND subtracted, right?

# Copy your driver code from the previous exercise below:
test_simple = SimpleCalculator.add(3, 4)
test_fancy = FancyCalculator.square_root(9)

