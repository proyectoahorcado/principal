require 'sinatra'
require './config'
require './lib/Escenario.rb'

get '/' do	
erb(:categorias)
end

post '/jugar'  do
escenario = Escenario.new
palabra=escenario.imprimir "ARGENTINA"
session['palabra']=palabra
erb(:escenario)
end