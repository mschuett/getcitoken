#!/bin/sh

cat <<EOT > ./config.yml
gitlab_ci_url: '$gl_url'
gitlab_username: '$gl_user'
gitlab_password: '$gl_password'
EOT

./getcitoken.rb
