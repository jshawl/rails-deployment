```
docker build -t myapp .
docker run --rm -v $(pwd):/app myapp bundle exec rails db:migrate
docker run --rm -it -v $(pwd):/app myapp bundle exec rails console
```
