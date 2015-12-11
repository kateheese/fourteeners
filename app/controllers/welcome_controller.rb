class WelcomeController < ApplicationController
  def leader
    @users = User.all.sort_by { |k| k["climbs"] }
  end
end
