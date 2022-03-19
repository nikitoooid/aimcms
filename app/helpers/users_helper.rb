module UsersHelper

  def user_avatar(user)
    return image_tag(user.avatar.variant(:thumb), class: 'user_avatar rounded-circle border border-3') if user.avatar.attached?

    content_tag :div, nil, class: 'user_avatar rounded-circle border border-3', style: "background: center / contain no-repeat url('#{asset_path('user.png')}')"
  end

end
