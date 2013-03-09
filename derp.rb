require 'sinatra/base'

class DerpApp < Sinatra::Base
	get "/" do
		'derp time'
  end
end