# docker-nginx-php8.1

컨테이너 종료후 삭제
docker stop v002_wykim-ares_com && docker rm v002_wykim-ares_com

도커 빌드명령

docker build --tag="wykim:ubuntu21.04-nginx-v002" github.com/kiss7001/docker-nginx-php8.1

컨테이너 실행

docker run -d -e VIRTUAL_HOST=v002.wykim-ares.com --expose 80 --name v002_wykim-ares_com wykim:ubuntu21.04-nginx-v002

컨테이너 내부명령

docker exec -it v002_wykim-ares_com /bin/bash

사용될 기능
sed -i 's/변경전 내용/변경할 내용/g' 파일명.sh


service php8.1-fpm start