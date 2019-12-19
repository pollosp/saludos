# Saludos

## Lista de saludos para amigos y conocidos

```text
TEXT_BASED
```

### RUBY

```ruby
RUBY_BASED
```

## Contribuir

- Usa `ruby add.rb SALUDO` para añadir un nuevo saludo
- Usa `ruby generate_readme.rb` para actualizar el readme principal
- Pull Request

## Run from Docker

```
docker run -ti --rm -v $PWD:/app --workdir /app ruby:2.6.5-alpine3.10 ruby add.rb SALUDO
```

## PET NAMES
```bash
$ ruby pet-name.rb
# leyenda-rompeolas
$ ruby pet-name.rb 4
# artista-truhan-mozo-chulapo
```

## API

Build image:

```
docker build . -t saludos-api
```

Run image:

```
docker run -ti --rm -p 8000:8000 saludos-api
```

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)
