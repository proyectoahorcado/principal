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
session['resultado']=""
session['ingresada']=""
erb(:escenario)
end

post '/verificar'  do
letra=params['inpLetra'].upcase
vr=VerificarResultado.new
letraCorrecta=vr.existeEnPalabra letra
session['ingresada']=session['ingresada']+letra
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