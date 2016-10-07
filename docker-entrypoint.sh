#!/bin/sh

echo "User: $LOCAL_USER; UID: $LOCAL_UID; GROUP: $LOCAL_GROUP; GID: $LOCAL_GID"

groupadd -g $LOCAL_GID $LOCAL_GROUP
useradd --shell /bin/bash -u $LOCAL_UID -g $LOCAL_GID -G default -c "" -m $LOCAL_USER

export HOME=/home/$LOCAL_USER

exec /bin/gosu $LOCAL_USER "$@"
