The sub-project used in this projects are somewhat unfinished, but I would call the current state usable. 

# dokuwiki-preconfigured

> You could stop at 5 or 6 stores - or just  one!

This is a batteries included distribution of DokuWiki. Its goal is to provide a super seamles user and setup experience. It comes with the following main features:

- Pretty URLs enabled out of the box
- [Krypton theme](https://github.com/FabLab-Luenen/dokuwiki-krypton) (based on Argon)
- [Visual Editor](https://github.com/FabLab-Luenen/dokuwiki-visual-editor)
- [Iframe plugin](http://www.dokuwiki.org/plugin:iframe)
- Some sensible defaults (hierarchical breadcrumbs instead of a view history)

![Installation speed run. The code block is run in and the availability of the Wiki shown](https://i.imgur.com/DxJvmRL.gif)

## Deployment using docker-compose

This repo contains a docker-compose.yml file you can use to get started. Just clone this repository and `docker-compose up`:

```
git clone https://github.com/fablab-luenen/dokuwiki-preconfigured
cd dokuwiki-preconfigured
docker-compose up -d
```

## Notes/Caveats

The initially supported languages are`de-informal` and `en`. 

## To do

- Figure out volumes and mounts
- Add suggested changes
- Add configuration tutorial
- Modify page edit strings

### New mounts

- config/dokuwiki/conf/
- config/dokuwiki/data/
- config/dokuwiki/lib/ -> volume?

The others don't seem all that relevant. Should perhaps be mounted on demand. 

## Thanks

Thank you to everyone who originally made the projects used in this distribution!

- Linuxserver.io for making the [base image](https://github.com/linuxserver/docker-dokuwiki)
- Cosmocode for making the [visual editor](https://github.com/cosmocode/dokuwiki-plugin-prosemirror)
- IceWreck, SoarinFerret, llune for creating the [Argon theme](https://github.com/IceWreck/Argon-Dokuwiki-Template)
