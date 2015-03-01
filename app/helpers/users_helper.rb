module UsersHelper

  # $BM?$($i$l$?%f!<%6!<$N(BGravatar (http://gravatar.com/) $B$rJV$9!#(B
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
