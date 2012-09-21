Before do |scenario|
  @browser = Watir::Browser.new :chrome if @browser.nil?
end

After do 
  @browser.close unless @browser.nil?
end
