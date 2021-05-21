FROM timbru31/ruby-node:2.7-slim-12

LABEL version="2.0.1"
LABEL repository="https://github.com/cubarco/jekyll-action"
LABEL homepage="https://github.com/cubarco/jekyll-action"
LABEL maintainer="Marco Lin <cubarco@github.com>"

RUN apk add --no-cache git build-base
# Allow for timezone setting in _config.yml
RUN apk add --update tzdata

# debug
RUN bundle version

COPY LICENSE README.md /

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
