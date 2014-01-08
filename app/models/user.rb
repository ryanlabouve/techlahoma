class User < ActiveRecord::Base
  has_many :authentications

  def authentication_for provider
    authentications.where(:provider => provider).first
  end
end
