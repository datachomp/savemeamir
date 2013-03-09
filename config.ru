#our rack file!
Bundler.require
require 'sinatra'
require './herp'
require './derp'

set :root, File.dirname(__FILE__)

map "/" do
    run HerpApp
end

map "/derp" do
    run DerpApp
end