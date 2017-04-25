require 'sinatra/base'

class App < Sinatra::base

	run! if app_file == $0

end
