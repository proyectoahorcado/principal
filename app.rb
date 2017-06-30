require 'sinatra'
require './config'

get '/' do	
erb(:categorias)
end

post '/jugar'  do
palabra="ARGENTINA"
session['palabra']=palabra
erb(:escenario)
end