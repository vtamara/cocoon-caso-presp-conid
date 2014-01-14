cocoon-caso-presp-sinid
=======================

Modelos anidados sin llave primaria en tabla que relaciona.

Ejemplo de una aplicación sobre Ruby on Rails 4.1 Beta, cocoon y simple_form, 
donde hay modelos anidados (Caso y Presponsable) y la tabla que relaciona 
(Caso_Presponsable) no tiene llave primaria (id).  

Ver contexto, explicación y comparación con otro caso en:
http://dhobsd.pasosdejesus.org/index.php?id=Modelos+Anidados+en+Rails+con+Cocoon

También es ejemplo de como sobrepasar algunas de las convenciones de RoR para
permitir:
* Nombres de tablas en síngular (configure/environment.rb)
* Llaves primarias con nombres diferentes (app/models/caso_presponsable)

Una vez descargue ejecutar con:

	sudo bundle install
	rake db:setup
	rails s

Y examine http://127.0.0.1:3000
	
