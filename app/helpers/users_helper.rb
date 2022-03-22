module UsersHelper

  def user_avatar(user, size=nil)
    content_tag :div, nil, class: 'user_avatar rounded-circle border border-3', style: "background: center / cover no-repeat url('#{user.avatar_url(size)}')"
  end

end
