module AccountsHelper

  def link_to_service service
    image = image_tag "#{service.name}.png", class: 'service'
    link_to image, service.url
  end

  def link_to_site(site)
    link_to site.title, site.url
  end

  def link_to_book(book)
    link_to book.title, book.url
  end

  def service_image(service_name)
    "#{service_name}.png"
  end

  def tab_link_to(label)
    link_to label, nil, class: 'tab etched', 'tab-section' => label
  end

  def image_tag_for_portrait(portrait, options = {})
    image_name = portrait ? portrait.url : 'missing.png'
    opts = options.merge(class: 'portrait etched')
    image_tag image_name, opts
  end

  def tab_content_id(account)
    "tab_#{account.id}"
  end

end
