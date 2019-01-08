all:
	docker build --no-cache -t ms1 . && docker run -p 8080:8080 -ti ms1
