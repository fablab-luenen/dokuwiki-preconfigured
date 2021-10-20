Work is ongoing. Check [Status](#status). 

# dokuwiki-preconfigured

> You could stop at 5 or 6 stores - or just  one!

This is a batteries included distribution of DokuWiki. Its goal is to provide a super seamles setup and user experience. It comes with the following main features:

- [Krypton Theme](https://github.com/FabLab-Luenen/dokuwiki-krypton)
- [Visual Editor](https://github.com/FabLab-Luenen/dokuwiki-visual-editor)
- More sensible defaults (hierarchical breadcrumbs instead of a view history, pretty URLs, SVG allowed media format)
- A bunch of useful plugins (iframe, more to come)

![Installation speed run. The code block is run in and the availability of the Wiki shown](https://i.imgur.com/DxJvmRL.gif)

## Deployment using docker-compose

This repo contains a docker-compose.yml file you can use to get started. Just clone this repository and `docker-compose up`:

```
git clone https://github.com/fablab-luenen/dokuwiki-preconfigured
cd dokuwiki-preconfigured
./start
```

## Goals

The general goal of this distribution is to establish a great alternative to proprietary wikis (namely Confluence). This translates into the following main points:

- Ease of use (UX design/placement of buttons and menus)
- Clean styling (low clutter)
- Easy setup

## Caveats

- The initially supported languages are`de-informal` and `en`
- While some care is taken to keep it usable JS-lessly, some things depend on Javascript (Visual Editor, Quick Search, Page dropdown [to be changed])
- Support for old browsers is an explicit non-goal. Miss me with that IE9 (I sometimes test on Safari, though). 
- Mobile/Narrow screen support is currently not great (no changes over Argon). It's a bit further down on the list of priorities. 

## Status

While there's still a lot to do, I think it's already a good improvement on the Dokuwiki experience. The preview is probably outdated. Check out Issues, PRs, [Discussions](https://github.com/fablab-luenen/dokuwiki-preconfigured/discussions/18) and Commits of the sub-projects for updates.  

## Thanks

Thank you to everyone who originally made the projects used in this distribution!

- Linuxserver.io for making the [base image](https://github.com/linuxserver/docker-dokuwiki)
- Cosmocode for making the [visual editor](https://github.com/cosmocode/dokuwiki-plugin-prosemirror)
- IceWreck, SoarinFerret, llune for creating the [Argon theme](https://github.com/IceWreck/Argon-Dokuwiki-Template)
