#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and extend it with the following method:
#
#   OrangeTree#pick(amount = 1) #=> OrangeTree
#
#     Returns `nil` if `@fruit` is less than the `amount` to pick.
#     Otherwise, returns a new OrangeTree object with it's fruit instance
#     variable initialized to the difference between `@fruit` and `amount`.
#     The default `amount` is 1.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick      #=> OrangeTree.new(49)
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick(49)  #=> OrangeTree.new(1)
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick(50)  #=> OrangeTree.new(0)
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick(51)  #=> nil
#     orange_tree.fruit     #=> 50
#
# TIP: To successfully complete this exercise, an OrangeTree object's `@fruit`
# instance variable should be assigned once and only once.
#
# Where should it be assigned? From within the initialize method. Once assigned,
# the `@fruit` instance variable should never, ever change.
#
# If you feel compelled to reassign `@fruit` outside the initialize method, you
# should stop and rethink your approach.

# rubocop:disable TrivialAccessors
class OrangeTree
  attr_accessor :fruit

  def initialize(fruit = 50)
    @fruit = fruit
  end

  def ==(other)
    puts fruit == other.fruit
  end

  def pick!(amount = 1)
    return nil if fruit < amount
    self.fruit -= amount
  end

  def pick(amount = 1)
    return nil if fruit < amount
    puts OrangeTree.new(fruit - amount).fruit
  end
end

orange_tree = OrangeTree.new
puts orange_tree.fruit
orange_tree.pick
puts orange_tree.fruit
orange_tree.pick(49)
puts orange_tree.fruit
orange_tree.pick(50)
puts orange_tree.fruit
orange_tree.pick(51)
puts orange_tree.fruit
