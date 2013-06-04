class User < ActiveRecord::Base
  def self.find_or_create_from_auth_hash(auth_hash)
    User.find_or_create_by_uid(auth_hash['uid'])
  end

  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :facebook_id, :first_name, :last_name, :uid, :email, :auth_token
end
