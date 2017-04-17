module ApplicationHelper
  def body_class
    "#{controller_name} #{controller_name}-#{controller.action_name} #{page_id}"
  end

  def body_id
    "#{page_id}"
  end

  def controller_name
    controller.controller_path.gsub('/','-')
  end

  def page_id
    params['id']
  end
end
