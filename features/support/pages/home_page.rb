class HomePage
  include PageObject

  page_url "#{FigNewton.base_url}"

  text_field(:search_text, :id => "search-text-1")

  def search(text)
    self.search_text = text
    self.search_text_element.send_keys :enter
  end
end
