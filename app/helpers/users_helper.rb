module UsersHelper

  def user_avatar(user)
    if user.avatar.attached?
      image_tag(user.avatar, class: 'user_avatar rounded-circle border border-3')
    else
      content_tag :div, nil, class: 'user_avatar rounded-circle border border-3', style: "background: center / contain no-repeat url('#{asset_path('user.png')}')"
    end
  end

  def avatar_url(user)
    if user.avatar.attached?
      Rails.application.routes.url_helpers.rails_blob_path(user.avatar, only_path: true)
    else
      asset_path('user.png')
    end
  end

end
