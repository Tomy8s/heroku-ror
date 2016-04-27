class LearningController < ApplicationController
  def academia
  end

  def computing
    @course = Course.all
  end

  def other
  end
end
