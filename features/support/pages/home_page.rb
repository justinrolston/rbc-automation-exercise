class HomePage
  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto 'rbctoday.com'
  end
end
