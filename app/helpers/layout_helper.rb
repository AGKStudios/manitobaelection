# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
    @title_set = true
  end

  def title_set?
    defined?(@title_set)
  end

  def show_title?
    @show_title
  end
  
  def highlighted_notice(notice)
    content_for(:highlighted_notice) { raw(notice) }
    @show_highlighted_notice = true
  end
  
  def show_highlighted_notice?
    @show_highlighted_notice
  end

  def breadcrumb(crumb, url)
    content_for(:current_crumbs) { h(" > ") + link_to(crumb.to_s, url) }
    @show_breadcrumbs = true
  end

  def show_breadcrumbs?
    @show_breadcrumbs
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:bottom_scripts) { javascript_include_tag(*args) }
  end
end
