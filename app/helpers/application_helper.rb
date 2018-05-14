module ApplicationHelper
  def gravatar_url(email, size)
    gravatar = Digest::MD5::hexdigest(email).downcase
    url = "https://gravatar.com/avatar/#{gravatar}?s=#{size}"
  end

  def profile_pic
    if current_user.image.present?
      current_user.image
    else
      gravatar_url(current_user.email, 400)
    end

  end


end
