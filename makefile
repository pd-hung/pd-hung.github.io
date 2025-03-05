serve:
	@docker run --rm -it -p 4000:4000 \
		--volume="$(shell pwd):/site/:rw" \
		-w /site \
		ruby:3.3.5-bullseye /bin/bash -c \
		"bundle install && bundle exec jekyll serve --host 0.0.0.0"