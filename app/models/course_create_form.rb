class CourseCreateForm
    include ActiveModel::Model

    attr_accessor :course_no, :course_name, :the_date, :year, :month, :date,
        :start_time, :start_hour, :start_minute,
        :end_time, :end_hour, :end_minute, :capacity
    
    validates :course_no, presence: true, length: { maximum: 4 }
    validates :course_name, presence: true, length: { maximum: 40 }
    validates :capacity, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 50 }
    validate :end_is_later_than_start

    private

    def end_is_later_than_start
        if (start_hour + start_minute).to_i > (end_hour + end_minute).to_i
            errors.add(:end_time, ' 「終了時刻」は「開始時刻」よりも後の時刻を入力してください')
        end
    end
end
