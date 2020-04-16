require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
set :port, 8080

get '/' do
  "42\n"
end

