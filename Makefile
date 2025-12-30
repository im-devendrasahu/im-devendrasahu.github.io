build:
	docker build -t devendrasahu.online .
run:
	- docker run --name website --rm -p 4000:4000 \
	-v "$$PWD:/usr/src/app" \
	-v "$$PWD/_posts:/usr/src/app/_posts" \
	devendrasahu.online

exec:
	- docker exec -it website sh
