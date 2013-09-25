module ApplicationHelper
  module ApplicationHelper
    def devise_mapping
      Devise.mappings[:user]
    end
    def javascript(*files)
      content_for(:head) { javascript_include_tag(*files) }
    end

    def stylesheet(*files)
      content_for(:head) { stylesheet_link_tag(*files) }
    end
    def resource_name
      devise_mapping.name
    end

    def resource_class
      devise_mapping.to
    end
  
  end
end
