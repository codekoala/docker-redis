build:
	docker build -t codekoala/redis .

run:
	docker run -t -i --rm -h redis.local -p 6379 --name redis1 codekoala/redis

clean:
	docker rmi `docker images -q codekoala/redis`
