# localuser-debian-docker

base repository enabling UID/GID-based access to data volumes (debain-based)

## usage

this is a base image meant to be included in other images, but the following example should give you an idea how a derivative image could be used.

	docker run -ti -l loci -e LOCAL_USER=user -e LOCAL_GROUP=group -e LOCAL_UID=1001 -e LOCAL_GID=1001 /bin/bash