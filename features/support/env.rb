require 'watir-webdriver'
require 'rspec/expectations'
require_relative 'page_maker'

World(RSpec::Matchers)
World PageMaker
