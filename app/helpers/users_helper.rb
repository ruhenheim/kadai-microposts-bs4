module UsersHelper
  def gravatar_url(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
  def generate_user_tab_link(path_info, tab_name, count)
    # https://thepugautomatic.com/2013/06/helpers/
    link_class = current_page?(polymorphic_path(path_info)) ? 'nav-link active' : 'nav-link' 
    link_to polymorphic_path(path_info), class: link_class do
      concat "#{tab_name} "
      concat tag.span(count, class: 'badge badge-secondary')
    end
  end
end
