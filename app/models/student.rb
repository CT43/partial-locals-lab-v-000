# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(search)

    names = self.all.collect {|student| student.name}
    binding.pry
    if names.include?("search")
      self.find_by(name: "search")
    else
      self.all
    end
  end
end
