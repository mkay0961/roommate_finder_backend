class UserAttributesController < ApplicationController

  def index
    render json: UserAttributes.all
  end

end
