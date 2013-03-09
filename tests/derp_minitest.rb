#!/usr/bin/env ruby
require './derp'
require 'minitest/autorun'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

class DerpTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    DerpApp
  end

  def test_derproot_path
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('derp time')
  end
end