class Roommate < ApplicationRecord
  belongs_to :user

  def generateRoommate()
    person = User.find(self.roommate_user_id)

    return { roommate_user_id: person.id,
             first_name: person.first_name,
             last_name: person.last_name,
             profile_image: person.profile_image,
             description: person.description
            }
  end

end
