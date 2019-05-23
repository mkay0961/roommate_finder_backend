class UserAttributesController < ApplicationController

  def index
    @all = UserAttribute.generateAllAttribute()
    render json: @all
  end

end
