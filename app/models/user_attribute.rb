class UserAttribute < ApplicationRecord
  belongs_to :user

  def generateAllAttributes()
    return "hi"
  end
  
end
