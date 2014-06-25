cocoon-caso-presp-ajax
=======================

Modelos anidados con llave primaria (id) en tabla que relaciona usando AJAX.

Ejemplo de una aplicación en español sobre Ruby on Rails 4.1, cocoon 1.2.6 
modificado para usar AJAX y simple_form, donde hay modelos anidados 
(Caso y Presponsable) y la tabla que relaciona (Caso_Presponsable) tiene 
llave primaria (id).  

Ver aplicación operando en
http://cocoon-caso-presponsable-ajax.herokuapp.co/

Ver contexto y dos métodos de hacerlo sin AJAX en:
http://dhobsd.pasosdejesus.org/index.php?id=Modelos+Anidados+en+Rails+con+Cocoon

Esta aplicación emplea coccon 1.2.6 modificado aún cuando no se requiere 
para un formulario tan simple que puede enviarse por cada modificación
--el cocoon modificado adquiere sentido cuando el envío del formulario es 
muy demorado y se requiere crear registros en la base de datos de los 
formularios anidados a medida que se agregan en la interfaz.

También es ejemplo de como sobrepasar algunas de las convenciones de RoR para
permitir:
* Nombres de tablas en síngular (configure/environment.rb)
* Llaves primarias con nombres diferentes (app/models/caso_presponsable)

Una vez descargue ejecutar con:

	sudo bundle install
	rake db:setup
	rails s

Y examine http://127.0.0.1:3000
	
