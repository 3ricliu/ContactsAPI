class UsersController < ApplicationController

  def index
    render json: {'a_key' => 'a value'}
  end

  def create
    render  "I'm the create method!".to_json
  end

  def show

  end

end
