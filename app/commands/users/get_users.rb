class Users::GetUsers
  prepend SimpleCommand

  def initialize()

  end

  def call()
   return users
  end

  private

  attr_accessor :email, :password

  def users
    users = User.All
    return users

    errors.add :user_authentication, 'invalid credentials'
  end
end