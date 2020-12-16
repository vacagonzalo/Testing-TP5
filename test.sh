#! /bin/sh

# Denegar conexión de cliente anónimo, sin TLS
testAnonimo(){
 VALUE=$(mosquitto_pub -p 8883 -h 192.168.0.59 -m aedes -t /topic/test -d | grep -o 'PUBLISH') 	
 assertFalse "$VALUE" "PUBLISH"
}

# Denegar conexión de cliente identificado sin password, sin TLS
testSinPassword(){
 VALUE=$(mosquitto_pub -p 8883 -h 192.168.0.59 -u aedes -m aedes -t /topic/test -d | grep -o 'PUBLISH') 
 assertFalse "$VALUE" "PUBLISH"
}

# Denegar conexión de cliente identificado con password, sin TLS.
testSinTLS(){
 VALUE=$(mosquitto_pub -p 8883 -h 192.168.0.59 -u aedes -P 123456789 -m aedes -t /topic/test -d | grep -o 'PUBLISH') 
 assertFalse "$VALUE" "PUBLISH"
}


# Otorgar conexión de cliente identificado con TLS.
testOtorgar(){
 VALUE=$(mosquitto_pub -p 8883 -h 192.168.0.59 -u aedes -P 123456789 -m aedes -t /topic/test -d --cafile ./certs/ca/ca.crt --cert ./certs/client/client.crt --key ./certs/client/client.key | grep -o 'PUBLISH') 	
 assertEquals "$VALUE" "PUBLISH"
}