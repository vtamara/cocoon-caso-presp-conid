cocoon-caso-presp
=======================

[ ![Codeship Status for vtamara/cocoon-caso-presponsable](https://www.codeship.io/projects/5d88c9b0-ddc7-0131-af05-5236ebb52643/status?branch=master)](https://www.codeship.io/projects/24714)

Formularios anidados con llave primaria (id) en tabla que relaciona.

Ejemplo de una aplicación sobre Ruby on Rails 4.1, cocoon 1.2.6 y 
simple_form, donde hay modelos anidados (Caso y Presponsable) y la tabla 
que relaciona (Caso_Presponsable) tiene llave primaria (id).  

Ver contexto, explicación y comparación con otro caso en:
http://dhobsd.pasosdejesus.org/index.php?id=Formularios+Anidados+en+Rails+con+Cocoon

También es ejemplo de como sobrepasar algunas de las convenciones de RoR para
permitir:
* Nombres de tablas en síngular (configure/environment.rb)
* Llaves primarias con nombres diferentes (app/models/caso_presponsable)

Una vez descargue ejecutar con:

	sudo bundle install
	rake db:setup
	rails s

Y examine http://127.0.0.1:3000
	
