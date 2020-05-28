require 'watir'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Watir::Browser.new :safari
end


After do
  @browser.close
end