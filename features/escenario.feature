Feature:
Como Jugador quiero poder iniciar el juego y ver el escenario	

Scenario: debo poder visulizar el escenario con la cantidad de espacios para ingreso de letras
Given que estoy en el escenario de juego		
When De clic en el botón jugar			
Then Debo ver "_ _ _ _ _ _ _ _ _"		

Scenario: debo poder ingresar una letra
Given que estoy en el escenario de juego	
And De clic en el botón jugar	
When ingreso la letra "L"
And hago clic en el botón verificar			
Then Debo ver si "letra correcta"

Scenario: debo poder ingresar una palabra
Given que estoy en el escenario de juego	
And De clic en el botón jugar	
When ingreso la palabra "ARGENTINA"
And hago clic en el botón verificar palabra			
Then Debo ver si "Haz Ganado"