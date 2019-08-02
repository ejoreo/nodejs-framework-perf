# Make this file executable by running 'chmod +x ./shellScript.sh' from the project's root directory

npm i express koa @hapi/hapi restify loopback fastify

# ab is the cli for Apache Bench: https://www.tutorialspoint.com/apache_bench/index.htm

echo node expressserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 127.0.0.1:3000/ ;
pkill -f expressserver

echo node koaserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 127.0.0.1:3000/ ;
pkill -f koaserver

echo node hapiserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 127.0.0.1:3000/ ;
pkill -f hapiserver

echo node restifyserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 127.0.0.1:3000/ ;
pkill -f restifyserver

echo node fastifyserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 127.0.0.1:3000/ ;
pkill -f fastifyserver

echo node expressserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 127.0.0.1:3000/ ;
pkill -f expressserver
