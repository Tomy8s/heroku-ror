class HomeController < ApplicationController
  def welcome
    @projects = Project.all.reverse
    @techs = Technology.all
  end
end
