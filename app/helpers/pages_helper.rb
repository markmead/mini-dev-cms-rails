module PagesHelper
  def page_content
    if @page.present?
      JSON.parse(@page.content.gsub(/:([a-zA-z]+)/,'"\\1"').gsub('=>', ': ')).symbolize_keys
    end
  end
end
