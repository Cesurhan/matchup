class Match < ApplicationRecord
  belongs_to :user
  validates :match_id, :user_id, :date, presence: true

  @students = User.where(admin:false, teacher:false)

  def self.student_ids
    @student_ids = []
    @students.each do |student|
      @student_ids << student.id
    end
    return @student_ids
  end

  def self.shuffle_student_ids
    student_ids
    @shuffled_students_ids = @student_ids.shuffle()
    return @shuffled_students_ids
  end

  def self.generate_matches(day)
    shuffle_student_ids
    id = []
    while @shuffled_students_ids.length > 1 do
      2.times{ id << @shuffled_students_ids.slice!(0) }
      Match.create(match_id: id[0], user_id: id[1], date: day)
      2.times{ id.delete_at(0) }
    end
  end

  def self.delete_matches(day)
    if day == nil
      Match.destroy_all
    else
      Match.where(date: day).destroy_all
    end
  end

end
