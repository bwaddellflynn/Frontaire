module ApplicationHelper
  def active_class(path)
    if request.path == path
      return 'active'
    else
      return ''
    end
  end

  def resource_name
      :flight
    end

    def resource
      @resource ||= Flight.new
    end

    def devise_mapping
      @devise_mapping ||= Devise.mappings[:flight]
    end
end
