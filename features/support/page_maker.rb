module PageMaker
  def on page_klass, &block
    page = page_klass.new @browser
    block.call page if block
    page
  end

  def current_page
    url = @browser.url
    if url.match /dashboard$/
      on DashboardPage
    else
      raise ArgumentError "No strategy has been defined for instantiating a page object for: #{url}"
    end
  end
end
