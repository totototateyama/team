class SchedulesController < ApplicationController
  before_action :set_schedule, except: [:index, :new, :create]
  before_action :authenticate_user!  #, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @schedules = Schedule.includes(:user).where('match_day >= ?', Date.today)
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @comment = Comment.new
    @comments = @schedule.comments
  end

  def edit
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to schedule_path(@schedule)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @schedule.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:status_id, :match_day, :match_week_id, :opponent, :location, :start_time, :meeting_time, :deadline).merge(user_id: current_user.id)
  end

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @schedule.user
  end
end
