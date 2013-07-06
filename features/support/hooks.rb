Before do |scenario|
  # @browser = Watir::Browser.new :chrome if @browser.nil?
  @browser = Selenium::WebDriver.for(:remote, :url => "http://localhost:9134")

#   caps = Selenium::WebDriver::Remote::Capabilities.firefox
#   caps.platform = 'OS X 10.6'
#   caps.version = '21'
#   caps[:name] = "Testing SL"
#   @browser = Selenium::WebDriver.for( :remote, 
#               :url => "",
#               :desired_capabilities => caps)
end

After do
  @browser.quit unless @browser.nil?
end
