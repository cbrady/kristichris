module ApplicationHelper

  def include_javascript(file)
    content_for :included_js do
      javascript_include_tag file
    end
  end
end
