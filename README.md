# README

El proyecto esta publicado en Heroku, las URLs habilitadas las pasare acontinuacion:

https://civilizations.herokuapp.com/clima?dia=0
En esta URL obtendra la informacion del clima para el dia enviado en el mismo formato definido en el PDF

https://civilizations.herokuapp.com/sequia
Aqui encontraremos el total de dias con sequia durante los 10 años

https://civilizations.herokuapp.com/optimo
Esta ruta devuelve el total de dias con clima optimo durante los 10 años

https://civilizations.herokuapp.com/lluvia
Aqui encontramos el total de dias con lluvia y el dia con pico mas alto de lluvia

Para la realizacion del ejerccio me base en el Movimiento Circular Uniforme, verificacion de los puntos por pendiente

En las carpetas `app/controllers` esta el controlador en el cual se atienden los requests descritos anteriormente

En `app/jobs` esta el job que ejecuto desde una raketask en `lib/tasks` para poblar la base de datos

En `app/models` estan los modelos usados para la realizacion del ejercicio asi com ouna pequeña implementacio del patron de diseño
factory para la creacion de los objetos Planetas

En `app/services` esta toda la logica del ejercicio.
