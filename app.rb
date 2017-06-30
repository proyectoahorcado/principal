require 'sinatra'
require './config'
require './lib/Escenario.rb'
require './lib/VerificarResultado.rb'

get '/' do	
erb(:categorias)
end

post '/jugar'  do
escenario = Escenario.new
palabra=escenario.imprimir "ARGENTINA"
session['palabra']=palabra
erb(:escenario)
end

post '/verificar'  do
letra=params['inpLetra']
vr=VerificarResultado.new
letraCorrecta=vr.existeEnPalabra letra
if letraCorrecta==true
	session['resultado']="letra correcta"
else
	session['resultado']="letra incorrecta"
end
erb(:escenario)
end

post '/verificarPalabra'  do
erb(:escenario)
end