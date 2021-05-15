class CourseCreateForm
    include ActiveModel::Model

    attr_accessor :course_no, :course_name, :the_date, :year, :month, :date,
        :start_time, :start_hour, :start_minute,
        :end_time, :end_hour, :end_minute, :capacity
end
