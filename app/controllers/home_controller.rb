class HomeController < ApplicationController
  def index
    @team = Draw.pick_team
  end
end
