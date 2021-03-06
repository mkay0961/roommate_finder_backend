class UsersController < ApplicationController

  def show
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    # @user = User.find(params["id"])
    if @user
      render json: @user.generateUserObjGeneral()
    else
      # do somthing
    end
  end

  def create
    ## create if availible if not send back message
  end

  def recomendations
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    # @user = User.find(params["id"])
    if @user
      render json: @user.generateRecomandations()
    else
      # do somthing
    end
  end

  def roommates
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    # @user = User.find(params["id"])
    if @user
      render json: @user.generateRoommates()
    else
      # do somthing
    end
  end

  def attributes
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

  def detailed
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    # @user = User.find(params["id"])
    if @user
      render json: @user.generateUserObj()
    else
      # do somthing
    end
  end

end
