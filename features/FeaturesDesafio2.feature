
Feature: Reproduciendo videos musicales

Background: 
Given estoy en YouTube

@tendenciaYoutube
Scenario: Busqueda de videos en tendencia
  When me posiciono en "Explorar" en el menú lateral izquierdo 
  And selecciono la opción de "Tendencias"
  Then valido que se muestren los videos populares del momento

@artistaYoutube
Scenario Outline: Busqueda de artistas y canción
  When Ingreso "<artista>" y "<canción>" en la barra de busqueda
  And selecciono el primer resultado
  Then valido que cargue el video
 Examples: 
| artista | canción | 
| Hozier | July |
| Julieta venegas | Lento |