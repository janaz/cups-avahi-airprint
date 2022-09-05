TZ:=$(shell TZ=Australia/Melbourne date +%Y%m%d%H%M%S)

NAME=janaz/cups-avahi-airprint
VERSION=2.4.2

build:
	docker build --no-cache -t $(NAME) .

tag-and-publish:
	docker tag $(NAME) $(NAME):$(VERSION)-$(TZ)
	docker push $(NAME):$(VERSION)-$(TZ)
	docker push $(NAME):latest
