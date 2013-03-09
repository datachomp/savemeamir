require 'sinatra/base'

class HerpApp < Sinatra::Base
	get "/" do
		'herp time'
  end
end