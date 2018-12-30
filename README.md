# Pull a git repo with this docker container
This ARM compatible container can be used to pull the latest version for a git repository. The repository must be mounted into the `/config` folder within the container.

Simply run it and it will perform the following commands

```
git fetch
git reset --hard origin/master
```

I am currently using it to update my home assistant configuration from within home assistant. This container is triggered by my home assistant instance with [ha-dockermon](https://github.com/philhawthorne/ha-dockermon)