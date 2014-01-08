class Authentication < ActiveRecord::Base
  belongs_to :user

  def self.from_omniauth(auth, current_user)
    auth = where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
    if current_user.nil? && auth.user.nil?
      auth.user = User.create(:name => auth.name)
      auth.save
    elsif current_user.present? && auth.user.nil?
      auth.user = current_user
      auth.save
    end
    auth
  end

  def self.create_from_omniauth(auth)
    info = auth["user_info"] || auth["info"]
    name = info["name"] rescue ""
    create! do |authentication|
      authentication.provider = auth["provider"]
      authentication.uid = auth["uid"]
      authentication.name = name
    end
  end
end
