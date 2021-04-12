class UsersController < ApplicationController
  def show
    users = User.order( created_at: :desc )
    render status: 200, json: { status: 200, message: 'success', data: users }
  end
end
