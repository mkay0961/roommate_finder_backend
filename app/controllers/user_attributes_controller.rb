class UserAttributesController < ApplicationController

  def index
    @all = UserAttribute.generateAllAttribute()
    render json: @all
  end

  def show
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    # @user = User.find(params["id"])
    if @user
      render json: @user.generateUserAttributes()
    else
      # do somthing
    end
  end

end
