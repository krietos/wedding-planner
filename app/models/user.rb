class User < ActiveRecord::Base
  has_many :aspects
  validates :name, :presence => true
  has_one :spouse, class_name: "User", foreign_key: "user_id"

  def shared_priorities

    shared_priorities = []
    self.aspects.each do |aspect|
      self.spouse.aspects.each do |spouse_aspect|
        if aspect.name == spouse_aspect.name
          shared_priorities << [aspect, spouse_aspect.priority]
        end
      end
    end
    shared_priorities

  end
end
