class ProjectsController < ApplicationController
  def ackermann
    @m = Ackermann.m
    @n = Ackermann.n
    
    @ans = "Ackermann \(#{@m}, #{@n}\) is ."
  end

  def fizzbuzz
  end

  def pythagorus
  end
end
