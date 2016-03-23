module ApplicationHelper
  def resource_name
    :student
    :admin
  end

  def resource
    @resource ||= Student.new
    @resource ||= Admin.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:student]
    @devise_mapping ||= Devise.mappings[:admin]
  end

end
