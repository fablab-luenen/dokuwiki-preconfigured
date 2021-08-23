Hint: This readme is aspirational. Not much of this is real yet. 

# dokuwiki-preconfigured

> You could stop at 5 or 6 stores - or just  one!

This is a batteries included distribution of Dokuwiki. Its goal is to provide a super seamles user and setup experience. It comes with the following main features:

- Pretty URLs enabled out of the box
- [Krypton theme](https://github.com/FabLab-Luenen/dokuwiki-krypton) (based on Argon)
- [Visual Editor](https://github.com/FabLab-Luenen/dokuwiki-visual-editor)
- [Iframe plugin](http://www.dokuwiki.org/plugin:iframe)
- [Style editor](https://www.dokuwiki.org/plugin:styling)
- [Blog plugin](https://www.dokuwiki.org/plugin:blog)

## Deployment using docker-compose

Here's a basic docker-compose.yml you can use to get started:

```
version: '3.2'
services:
  wiki:
    image: ghcr.io/solarkraft/dokuwiki
    ports:
      - 80:80
    restart: unless-stopped
    volumes:
      #- ./local.php:/config/dokuwiki/conf/local.php
      #- ./data/:/app/dokuwiki/data # this is just cache?
      #- ./local.php:/config/dokuwiki/conf/userstyle.css
      - ./config/:/config/
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Berlin
```

## Caveats (in flux, double-check)

This project replaces <abcd>.php with a custom one to change some settings. This file also includes other stuff and there is a chance that it will be different in a future version of DokuWiki. If something breaks, it’s probably here. 
Alternatives like changing the settings programmatically are possible, but haven’t been decided to be worth it just yet, since it’s not expected to be a significant problem (but we will see).
TEST: Placing in a LocalSettings.php doesn’t work, because it hinders the install.php from running. 

## To do

- Revamp mounts to only include actually necessary stuff
- separate config and data
- Figure out volumes
- Check methods of settings application 
- Set settings: nice URLs+slashes, theme

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
