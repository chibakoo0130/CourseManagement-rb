class CoursesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @course = Course.new
  end

  def confirm
    if params[:back].present?
      render :menu
      return
    end

    @course = Course.new(course_params)
    render :new
  end

  def create
  end

  def edit
  end

  private

  def course_params
    params.require(:course).permit(:course_no, :course_name, :the_date, :start_time, :end_time, :capacity)
  end
end
