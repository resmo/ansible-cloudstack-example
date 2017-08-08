#!/bin/bash -x

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}

echo "Starting with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -o -c "" -d /usr/src/app app
chown app: /usr/src/app

export HOME=/usr/src/app
ln -s /usr/local/bin/python /usr/bin/python
if [ -f '/usr/src/app/requirements.yml' ]
then
  exec /usr/sbin/gosu app ansible-galaxy install -r requirements.yml
fi
exec /usr/sbin/gosu app "$@"
