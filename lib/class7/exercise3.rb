#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and extend it with the following method:
#
#   OrangeTree#pick!(amount = 1) #=> Integer or nil
#
#     Returns nil if @fruit is less than the `amount` to pick.
#     Otherwise, subtracts the `amount` from @fruit and returns it's new value.
#     The default `amount` is 1.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit      #=> 50
#
#     orange_tree.pick!      #=> 49
#     orange_tree.fruit      #=> 49
#
#     orange_tree.pick!(5)   #=> 44
#     orange_tree.fruit      #=> 44
#
#     orange_tree.pick!(50)  #=> nil
#     orange_tree.fruit      #=> 44

# rubocop:disable TrivialAccessors
class OrangeTree
  attr_accessor :fruit

  def initialize(fruit = 50)
    @fruit = fruit
  end

  def pick!(amount = 1)
    return nil if fruit < amount
    self.fruit -= amount
  end
end

orange_tree = OrangeTree.new
puts orange_tree.fruit
puts orange_tree.pick!
puts orange_tree.fruit
puts orange_tree.pick!(5)
puts orange_tree.fruit
puts orange_tree.pick!(50)
puts orange_tree.fruit
