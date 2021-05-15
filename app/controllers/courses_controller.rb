require "date"
require "course"

class CoursesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @course_create_form = CourseCreateForm.new
    @year = Date.today.year
  end

  def confirm
    if params[:back].present?
      render :menu
      return
    end

    @course_create_form = CourseCreateForm.new(course_create_form_params)
    render :confirm
  end

  def create
    @course_create_form = CourseCreateForm.new(course_create_form_params)
    if params[:back].present?
      @year = Date.today.year
      render :new
    else
      @course = Course.new
      form_to_model(course_create_form_params, @course)
      p @course
      @course.save!
      render :create
      return
    end
  end

  def complete
    if params[:menu].present?
      render :menu
    elsif params[:new]
      @year = Date.today.year
      render :new
    end
  end
  
  def edit
  end

  private

  def course_create_form_params
    params.require(:course_create_form).permit(:course_no, :course_name, :year, :month, :date, 
      :start_hour, :start_minute, :end_hour, :end_minute, :capacity)
  end

  def form_to_model(form, course)
    course_create_form = CourseCreateForm.new(form)
    course.course_no = course_create_form.course_no
    course.course_name = course_create_form.course_name
    course.the_date = course_create_form.year + "-" + course_create_form.month + "-" + course_create_form.date
    course.start_time = course_create_form.start_hour + ":" + course_create_form.start_minute
    course.end_time = course_create_form.end_hour + ":" + course_create_form.end_minute
    course.capacity = course_create_form.capacity
    course.inp_date = Date.today
    course.upd_date = Time.now
  end
end