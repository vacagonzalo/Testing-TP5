# Testing de Sistemas de Internet de las Cosas - TP5
FIUBA - LSE

Alumno: Ing. Gonzalo Nahuel Vaca
## Requisitos
* shunit2
* mosquitto
## Pruebas a realizar
* Denegar conexión de cliente anónimo, sin *TLS*
* Denegar conexión de cliente identificado sin password, sin *TLS*
* Denegar conexión de cliente identificado con password, sin *TLS*
* Otorgar conexión de cliente identificado con *TLS*
## Instrucciones para replicar las pruebas
* Tener los requisitos satisfechos
* clonar/descargar este repositorio
* dar permisos de ejecución a *test.sh* (chmod +x test.sh)
* colocar la dirección correcta del broker en *test.sh*
* configurar su broker de elección con los certificados provistos
* correr el comando **shunit2 ./test.sh**