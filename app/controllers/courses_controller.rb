require "date"
require "course"

class CoursesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @course = Course.new
    @year = Date.today.year
  end

  def confirm
    if params[:back].present?
      render :menu
      return
    end

    @course = Course.new(course_params)
    render :confirm
  end

  def create
    @course = Course.new(course_params)
    if params[:back].present?
      @year = Date.today.year
      render :new
      return
    end
  end

  def edit
  end

  private

  def course_params
    getTheDate
    getStartTime
    getEndTime
    params.require(:course).permit(:course_no, :course_name, :the_date, :start_time, :end_time, :capacity)
  end

  def getTheDate
    params.require(:course).permit(:year, :month, :date)
    params[:course][:the_date] = params[:course][:year] + "-" + params[:course][:month] + "-" + params[:course][:date]
  end

  def getStartTime
    params.require(:course).permit(:start_hour, :start_minute)
    params[:course][:start_time] = params[:course][:start_hour] + ":" + params[:course][:start_minute]
  end

  def getEndTime
    params.require(:course).permit(:end_hour, :end_minute)
    params[:course][:end_time] = params[:course][:end_hour] + ":" + params[:course][:end_minute]
  end
end
