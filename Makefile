all:
	docker build --no-cache -t ms1 . && docker run -p 80:80 -ti ms1
