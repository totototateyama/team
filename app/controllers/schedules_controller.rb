class SchedulesController < ApplicationController
  before_action :set_schedule, except: [:index, :new, :create]
  before_action :authenticate_user!
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @schedules = Schedule.includes(:user).order(match_day: :asc).where('match_day >= ?', Date.today)
  end

  def new
    @schedule = Schedule.new
  end


  def create
      # match_dayの各部分を取得
      match_day_year = params[:schedule]["match_day(1i)"].to_i
      match_day_month = params[:schedule]["match_day(2i)"].to_i
      match_day_day = params[:schedule]["match_day(3i)"].to_i

      # start_timeとmeeting_timeの各部分を取得
      start_hour = params[:schedule]["start_time(4i)"].to_i
      start_minute = params[:schedule]["start_time(5i)"].to_i
      meeting_hour = params[:schedule]["meeting_time(4i)"].to_i
      meeting_minute = params[:schedule]["meeting_time(5i)"].to_i

      # DateTimeを生成
      start_datetime = DateTime.new(match_day_year, match_day_month, match_day_day, start_hour, start_minute)
      meeting_datetime = DateTime.new(match_day_year, match_day_month, match_day_day, meeting_hour, meeting_minute)

      @schedule = Schedule.new(schedule_params)
      @schedule.start_time = start_datetime
      @schedule.meeting_time = meeting_datetime
      
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

  
  def destroy
    if @schedule.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


  def edit
    @schedule.start_time = @schedule.start_time - 9.hours
    @schedule.meeting_time = @schedule.meeting_time - 9.hours
  end


  def update
    # match_dayの各部分を取得
    match_day_year = params[:schedule]["match_day(1i)"].to_i
    match_day_month = params[:schedule]["match_day(2i)"].to_i
    match_day_day = params[:schedule]["match_day(3i)"].to_i
    match_date = Date.new(match_day_year, match_day_month, match_day_day)

    # start_timeとmeeting_timeの各部分を取得
    start_hour = params[:schedule]["start_time(4i)"].to_i
    start_minute = params[:schedule]["start_time(5i)"].to_i
    meeting_hour = params[:schedule]["meeting_time(4i)"].to_i
    meeting_minute = params[:schedule]["meeting_time(5i)"].to_i
    start_datetime = DateTime.new(match_day_year, match_day_month, match_day_day, start_hour, start_minute)
    meeting_datetime = DateTime.new(match_day_year, match_day_month, match_day_day, meeting_hour, meeting_minute)

    # deadlineの各部分を取得
    deadline_year = params[:schedule]["deadline(1i)"].to_i
    deadline_month = params[:schedule]["deadline(2i)"].to_i
    deadline_day = params[:schedule]["deadline(3i)"].to_i
    deadline_date = Date.new(deadline_year, deadline_month, deadline_day)

    # @scheduleに各部分を書き込む
    @schedule.status_id = params[:schedule]["status_id"].to_i
    @schedule.match_day = match_date
    @schedule.match_week_id = params[:schedule]["match_week_id"].to_i
    @schedule.opponent = params[:schedule]["opponent"]
    @schedule.location = params[:schedule]["location"]
    @schedule.deadline = deadline_date
    @schedule.start_time = start_datetime
    @schedule.meeting_time = meeting_datetime

  if @schedule.save
      redirect_to schedule_path(@schedule)
    else
      render :edit, status: :unprocessable_entity
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