class HomeController < ApplicationController
  def welcome
    @projects = Project.all
    @techs = Technology.all
  end
end
