class Authentication < ActiveRecord::Base
  belongs_to :user

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    info = auth["user_info"] || auth["info"]
    name = info["name"] rescue ""
    create! do |authentication|
      authentication.provider = auth["provider"]
      authentication.uid = auth["uid"]
      authentication.name = name
      authentication.user = User.create(:name => name)
    end
  end
end
