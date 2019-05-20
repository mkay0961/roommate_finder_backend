class Recomandation < ApplicationRecord
  belongs_to :user

  def generateRec()
    person = User.find(self.user_from_id)

    return { id: person.id,
             first_name: person.first_name,
             last_name: person.last_name,
             profile_image: person.profile_image,
             recomandation: self.recomandation
            }
  end

end
