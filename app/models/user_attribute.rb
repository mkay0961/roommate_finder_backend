class UserAttribute < ApplicationRecord
  belongs_to :user

  def generateAttribute
    return {id: self.id, user_id: self.user_id, user_attribute: self.user_attribute}
  end

  def self.generateAllAttribute

    return self.all.map do |attr|
       attr.user_attribute
    end.uniq

  end

end
