module UsersHelper

  def user_avatar(user)
    content_tag :div, nil, class: 'user_avatar rounded-circle border border-3', style: "background: center / cover no-repeat url('#{avatar_url(user)}')"
  end

  def avatar_url(user)
    if user.avatar.attached?
      Rails.application.routes.url_helpers.rails_blob_path(user.avatar, only_path: true)
    else
      asset_path('user.png')
    end
  end

end
