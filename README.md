### Builder for Meteor applications

Create a `Dockerfile` on your application with de following lines :

```
FROM abs0lom/meteord:<tag>
```

and build the image. It's over.

see on [dockerhub](https://hub.docker.com/repository/docker/abs0lom/meteord)

#### Environment variables 

| name             | default value                    | description                                                                             |
|------------------|----------------------------------|-----------------------------------------------------------------------------------------|
| PORT             | 3000                             | node port. Do not use 80 ! Is not allowed with regular user.                            |
| ROOT\_URL        | http://localhost                 | default url for Meteor (see doc for more infos)                                         |
| MONGO\_URL       | mongodb://localhost:27017/meteor | mongo url for Meteor (see doc for more infos). *This image don't contain Mongo server.* |
| METEOR\_SETTINGS | {}                               | put your Meteor settings here. (see doc for more infos)                                 |
