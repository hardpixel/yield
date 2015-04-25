module ApplicationHelper
  # Application header logo
  def app_header_logo
    name = '<strong>Yield</strong>AgilePM'.html_safe
    small = "<span class='logo-mini'>#{icon('logo')}</span>".html_safe
    large = "<span class='logo-lg'>#{icon('logo') + name}</span>".html_safe

    link_to small + large, '#', class: 'logo'
  end

  # User gravatar image
  def gravatar(user, size=32, html_options={})
    options = { class: 'gravatar', width: size, height: size }
    image_url = user.gravatar_url(:default => 'mm', :size => size)

    if user.respond_to? :avatar
      image_url = user.avatar unless user.avatar.nil?
    end

    image_tag image_url, html_options.merge(options){|key, first, second| first + ' ' + second }
  end

  # 0 to 100 percentage select
  def percentage_select(step=10)
    options = []

    (0..100).step(step).each do |p|
      options << ["#{p}%", p]
    end

    return options
  end

  # Ratio color
  def ratio_color(ratio=0)
    color = 'red'
    color = 'yellow' if ratio > 20
    color = 'aqua' if ratio > 40
    color = 'light-blue' if ratio > 60
    color = 'green' if ratio > 80

    return color
  end

  # Status color
  def status_color(status=nil)
    color = 'default'

    unless status.nil?
      color = 'success' if status.type == 'open'
      color = 'danger' if status.type == 'closed'
    end

    return color
  end
end
