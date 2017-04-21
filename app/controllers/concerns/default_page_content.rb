module DefaultPageContent
  extend ActiveSupport::Concern
  included do 
      before_filter :set_title
    end
  def set_title
    @page_title = "Ryan Nygard Portfolio | My Portfolio Website"
    @seo_keywords = "Ryan Nygards portfolio"
  end
end