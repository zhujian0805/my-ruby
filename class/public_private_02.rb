#!/usr/bin/ruby -w

class Parent
  private
  def name
    'Mommy'
  end
end

class Child < Parent
  def get_parent_name
    # Implicit receiver
    puts name

    # Explicit receiver
    puts self.name rescue puts 'NoMethodError'

    # Explicit receiver
    puts Parent.new.name rescue puts 'NoMethodError'
  end
end

child1 = Child.new
child1.get_parent_name
child2 = Child.new
child2.get_parent_name
