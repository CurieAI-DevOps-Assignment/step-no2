FROM debian:latest

ENV tmp_dir /tmp

RUN apt-get update \
  && apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install -y nodejs

RUN npm install -g json-server

RUN echo '{"posts":[{"id":1,"title":"json-server","auther":"typicode"}], "comments": [{"id": 1, "body": "some comment", "postId": 1}], "profile": [{"name": "tycode"}]}' > /tmp/db.json

ENTRYPOINT ["json-server", "--port", "8080", "--host", "0.0.0.0"]

CMD ["/tmp/db.json"]

