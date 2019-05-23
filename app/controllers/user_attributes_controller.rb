class UserAttributesController < ApplicationController

  def index
    render json: UserAttribute.all
  end

end
