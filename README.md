# Saludos
![Deploy the application to Google Cloud Run](https://github.com/pollosp/saludos/workflows/Deploy%20the%20application%20to%20Google%20Cloud%20Run/badge.svg)

## Lista de saludos para amigos y conocidos

```text
Fitipaldi, Generalisimo, artista, asteroide, berraco, bro, búfalo, campeón, capitán, centella, chulapo, ciclón, coloso, compadre, compatriota, crack, depredador, embajador, estrella, fenómeno, fiera, figura, figurín, furia, gigante, inmortal, jefe, leyenda, león, locuelo, machín, maestro, maquina, mascachapas, mastodonte, megalodón, mesías, mito, mozo, máquina, numero1, partenueces, piramide, poeta, primo, relámpago, rey, rompeolas, socio, tarzán, termotanque, tete, tiburón, tifón, tigre, titan, torero, tornado, toro, truhán, brontosaurio, mamadísimo, camarada, carapapa, gallo, nano, tronco
```

### RUBY

```ruby
["Fitipaldi", "Generalisimo", "artista", "asteroide", "berraco", "bro", "búfalo", "campeón", "capitán", "centella", "chulapo", "ciclón", "coloso", "compadre", "compatriota", "crack", "depredador", "embajador", "estrella", "fenómeno", "fiera", "figura", "figurín", "furia", "gigante", "inmortal", "jefe", "leyenda", "león", "locuelo", "machín", "maestro", "maquina", "mascachapas", "mastodonte", "megalodón", "mesías", "mito", "mozo", "máquina", "numero1", "partenueces", "piramide", "poeta", "primo", "relámpago", "rey", "rompeolas", "socio", "tarzán", "termotanque", "tete", "tiburón", "tifón", "tigre", "titan", "torero", "tornado", "toro", "truhán", "brontosaurio", "mamadísimo", "camarada", "carapapa", "gallo", "nano", "tronco"]
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
