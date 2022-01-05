
build:
	docker run --rm  --volume="${PWD}:/srv/jekyll" -i jekyll/jekyll:4.2.0 jekyll build

serve:
	docker run --rm  --volume="${PWD}:/srv/jekyll" -p 127.0.0.1:4000:4000/tcp -it jekyll/jekyll:4.2.0 jekyll serve --incremental  -l 

clean: 
	rm -rf _site
