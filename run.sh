docker run -d -p 1935:1935 -p 80:8080 --name hls \
	-v `pwd`/players:/usr/local/nginx/html/players \
	-v `pwd`/htpasswd:/etc/nginx/htpasswd \
	-v `pwd`/static:/usr/local/nginx/static \
	-v `pwd`/nginx.conf:/etc/nginx/nginx.conf \
	alqutami/rtmp-hls
