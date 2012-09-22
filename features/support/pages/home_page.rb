require 'page-object'

class HomePage
  include PageObject

  page_url 'rbctoday.com'

  text_field(:search_text, :id => "search-text-1")
  button(:search_button, :id => "search-submit-1")

  def search(text)
    self.search_text = text
    @browser.send_keys :enter
  end
end
