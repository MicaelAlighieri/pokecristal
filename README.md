# Pokémon - Edición Cristal [![Build Status][ci-badge]][ci]

Esta es una recreación en decompilación GBC de la versión en castellano de Pokémon: Edición Cristal.

Este código fuente recreado permite construir el siguiente archivo ROM:


- Pokemon - Edicion Cristal (España).gbc `sha1: 889a06fc0bb863666865aa69def0adf97945ac2a`

Para configurar el repositorio, consulta el siguiente enlace: [INSTALL.md](INSTALL.md).

Agradecimientos especiales a erosunica (https://github.com/erosunica/) por hacer el commit inicial con los cambios, mi trabajo ha sido una adaptación del suyo.

## Estructuración del repositorio

Con el objetivo de facilitar el aprendizaje y el desarrollo mediante este código fuente recreado, este repositorio está organizado en un sistema de tres ramas:
- **master:** Contiene el código testeado y definitivo del archivo de juego.
- **dev**: Contiene una versión en desarrollo del código que puede estar más alineada con el repositorio oficial de pokecrystal
- **feature**: Contiene modificaciones en proceso de exportación a la rama de desarrollo

El código testeado y definitivo contará con una versión de soporte extendido (LTS) durante 4 años, periodo durante el cual **no presentará ningún tipo de modificaciones estructurales**, y se dará soporte en forma de tutoriales y resolución de dudas.

## Más información útil

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- **Discord:** [pret][discord]
- **IRC:** [libera#pret][irc]

Otros proyectos de decompilación:

- [**Pokémon Red/Blue**][pokered]
- [**Pokémon Yellow**][pokeyellow]
- [**Pokémon Gold/Silver**][pokegold]
- [**Pokémon Crystal**][pokecrystal]
- [**Pokémon Pinball**][pokepinball]
- [**Pokémon TCG**][poketcg]
- [**Pokémon Ruby**][pokeruby]
- [**Pokémon FireRed**][pokefirered]
- [**Pokémon Emerald**][pokeemerald]
- **Pokeemerald Base Hispana:** https://github.com/ivaantxo/Pokeemerald-Base-Hispana/

[pokered]: https://github.com/pret/pokered
[pokeyellow]: https://github.com/pret/pokeyellow
[pokegold]: https://github.com/pret/pokegold
[pokecrystal]: https://github.com/pret/pokecrystal
[pokepinball]: https://github.com/pret/pokepinball
[poketcg]: https://github.com/pret/poketcg
[pokeruby]: https://github.com/pret/pokeruby
[pokefirered]: https://github.com/pret/pokefirered
[pokeemerald]: https://github.com/pret/pokeemerald
[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[discord]: https://discord.gg/d5dubZ3
[irc]: https://web.libera.chat/?#pret
[ci]: https://github.com/pret/pokecrystal/actions
[ci-badge]: https://github.com/pret/pokecrystal/actions/workflows/main.yml/badge.svg