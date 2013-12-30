class Authentication < ActiveRecord::Base
  belongs_to :user

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |authentication|
      authentication.provider = auth["provider"]
      authentication.uid = auth["uid"]
      authentication.name = auth["user_info"]["name"]
      authentication.user = User.create(:name => auth["user_info"]["name"])
    end
  end
end
