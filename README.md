# Pull a git repo with this docker container

This is an ARM compatible docker container to be used to pull a git repo mounted in the `/config` folder.

Simply run it and it will perform the following commands

```
git fetch
git reset --hard origin/master
```

I am currently using it to update my home assistant configuration from within home assistant. This container is triggered by my home assistant instance with [ha-dockermon](https://github.com/philhawthorne/ha-dockermon)