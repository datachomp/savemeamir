#!/usr/bin/env ruby
require './herp'
require 'minitest/autorun'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

class HerpTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    HerpApp
  end

  def test_herproot_path
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('herp time')
  end
end