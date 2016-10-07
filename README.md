# localuser-debian-docker (pouyatafti/localuser-debian on docker hub)

base repository enabling UID/GID-based access to data volumes (debain-based)

## usage

this is a base image meant to be included in other images, but the following example should give you an idea how a derivative image could be used.

	docker run -ti -e LOCAL_USER=user -e LOCAL_GROUP=group -e LOCAL_UID=1001 -e LOCAL_GID=1001 pouyatafti/localuser-debian /bin/bash

## credits

largely inspired by [Deni Bertović's post](https://denibertovic.com/posts/handling-permissions-with-docker-volumes/)
