class UsersController < ApplicationController


  def index
    @users = Schedule.includes(:user).order(match_day: :desc).where('match_day <= ?', Date.today - 1)
  end

  def show
  end

end
