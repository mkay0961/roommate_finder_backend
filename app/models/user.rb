class User < ApplicationRecord
  has_many :users, through: :roommates
  has_many :roommates
  has_many :user_attributes
  has_many :recomandations
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  def generateUserObj()

    rtnObj = { id: self.id,
             first_name: self.first_name,
             last_name: self.last_name,
             profile_image: self.profile_image,
             description: self.description,
             looking: self.looking,
             roommates: generateRoommates(),
             user_attributes: generateUserAttributes()
            }
    if(self.looking)
      rtnObj[:address] = self.address
    end

    return rtnObj

  end

  def generateRoommates()

    rtnObj = { current: [], non_current: [] }

    self.roommates.map do |roommate|

        if(roommate.current)
          rtnObj[:current].push(roommate.generateRoommate())
        else
          rtnObj[:non_current].push(roommate.generateRoommate())
        end

    end

    return rtnObj
    
  end

  def generateUserAttributes()

    return self.user_attributes.map do |attribute|
        return attribute
    end

  end



end
