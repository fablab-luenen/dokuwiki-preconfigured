# dokuwiki-preconfigured

> You could stop at 5 or 6 stores - or just  one!

This is the umbrella project for a "batteries included" distribution of DokuWiki. Its goal is to provide a seamless setup and user experience. Its main components are: 

- A docker-compose file
- Some scripts for common operations (backup/restore, use not required)
- More sensible defaults (hierarchical breadcrumbs instead of a view history, pretty URLs, SVG as allowed media format)
- Some useful plugins
- [Krypton](https://github.com/FabLab-Luenen/dokuwiki-krypton) theme (polished version of the [Argon](https://www.dokuwiki.org/template:argon) theme)
- Polished up [Visual Editor](https://github.com/FabLab-Luenen/dokuwiki-visual-editor)

Work is ongoing. Check [Status](#status) for updates. 

![Installation speed run. The code block is run in and the availability of the Wiki shown](https://i.imgur.com/DxJvmRL.gif)

## Deployment using docker-compose

This repo contains a docker-compose.yml file you can use to get started. Just clone this repository and `docker-compose up`:

```
git clone https://github.com/fablab-luenen/dokuwiki-preconfigured
cd dokuwiki-preconfigured
./start
```

The first time it's run it will start a docker build, which inolves pulling the [base image linuxserver/docker-dokuwiki](https://github.com/linuxserver/docker-dokuwiki) and doing some modifications on top of it. 

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

Lately (2022-02-13) the contributions have slowed a little because the Wiki is now in active use and in a state I consider close to "good enough". 

While there's still a lot to do to perfect the experience, I think it's already quite an improvement. Check out issues, PRs, [Discussions](https://github.com/fablab-luenen/dokuwiki-preconfigured/discussions/18) and commits of the sub-projects for updates. The preview on this page may be outdated. 

## Thanks

Thank you to everyone who originally made the projects used in this distribution!

- Linuxserver.io for making the [base image](https://github.com/linuxserver/docker-dokuwiki)
- Cosmocode for making the [visual editor](https://github.com/cosmocode/dokuwiki-plugin-prosemirror)
- IceWreck, SoarinFerret, llune for creating the [Argon theme](https://github.com/IceWreck/Argon-Dokuwiki-Template)
- Myself (solarkraft) for the polishing effort. Hehe. 
