require 'dotenv'
Dotenv.load('.env')

require 'selenium-webdriver'
require 'cucumber'
require 'watir'
require 'rspec'
require 'rake'
require 'page-object'
require 'webdrivers'
require 'faker'
require 'net/http'
require_relative 'site_helper'

World(SiteHelper)
