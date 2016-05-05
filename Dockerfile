# start with small Ruby container
FROM ruby:alpine

# add libraries for nokogiri, then install required gem
RUN apk add --no-cache libxml2 libxslt
RUN apk add --no-cache -t buildstuff build-base libxml2-dev libxslt-dev zlib-dev
RUN gem install nokogiri -- --use-system-libraries
RUN gem install mechanize
RUN apk del buildstuff

# copy our own scripts and set parameter defaults
ADD run.sh getcitoken.rb ./
ENV gl_url http://localhost/ci
ENV gl_user root
ENV gl_password password

CMD ["./run.sh"]
