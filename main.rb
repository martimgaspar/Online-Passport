# #require_relative 'model/test/test.rb'

# require 'sinatra'
# set :protection, :except => :frame_options
# set :bind, '0.0.0.0'
# get "/" do
#    erb:index, :locals => { host: request.host }
# end

require_relative 'console-implementation/ConsoleImplementation.rb'

ConsoleImplementation.new
