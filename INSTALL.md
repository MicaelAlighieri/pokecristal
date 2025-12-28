# Instrucciones

Estas instrucciones explican cómo configurar las herramientas necesarias para compilar **pokecristal**, incluyendo [**rgbds**](https://github.com/gbdev/rgbds), que ensambla el código fuente en una ROM.

Si tienes problemas, pide ayuda en el [**foro de Whack A Hack!**](https://whackahack.com/foro/) o en su [**Discord**](https://discord.gg/FrKadkb).

## Windows 10 y versiones posteriores

Descarga e instala [**Windows Subsystem for Linux**](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Luego abre la **terminal de WSL**.

Actualiza el software de WSL antes de continuar. Si elegiste Debian, Ubuntu u otra distribución que use `apt-get`, introduce este comando:

```bash
apt-get update && apt-get upgrade
```

WSL tiene su propio sistema de archivos que no es accesible desde Windows, pero **los archivos de Windows sí son accesibles desde WSL**. Por eso, querrás instalar pokecristal dentro de Windows. Tendrás que cambiar el **directorio de trabajo actual** cada vez que abras WSL.

Por ejemplo, si quieres guardar pokecristal en **C:\Users\<usuario>\Desktop**, introduce este comando:

```bash
cd /mnt/c/Users/<usuario>/Desktop
```

(La unidad `C:\` de Windows se llama `/mnt/c/` en WSL. Sustituye `<usuario>` por tu nombre de usuario).

Si esto funciona, sigue las [instrucciones para **Linux**](#linux) abajo según la distribución que hayas instalado en WSL.

De lo contrario, continúa leyendo las [instrucciones antiguas para Windows](#windows-cualquier-version).

## Windows (cualquier versión)

Descarga [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** para Windows de 64 bits o **setup-x86.exe** para 32 bits.

Ejecuta el instalador y deja las opciones por defecto. En el paso "**Select Packages**", elige instalar los siguientes paquetes, todos en la categoría "**Devel**":

- `make`
- `git`
- `gcc-core`

Haz doble clic sobre el texto "**Skip**" junto a cada paquete para seleccionar la versión más reciente disponible.

Luego sigue las [instrucciones de **rgbds**](https://rgbds.gbdev.io/install#pre-built) para Windows con Cygwin e instala **rgbds 1.0.0**.

**Nota:** Si ya tienes instalado un rgbds anterior a 1.0.0, deberás actualizarlo. Ignora esto si nunca instalaste rgbds. Si una versión posterior a 1.0.0 no funciona, prueba a descargar la 1.0.0.

Ahora abre la **terminal de Cygwin** e introduce los siguientes comandos.

Cygwin tiene su propio sistema de archivos dentro de Windows, en **C:\cygwin64\home\<usuario>**. Si no quieres guardar pokecristal allí, tendrás que cambiar el **directorio de trabajo actual** cada vez que abras Cygwin.

Por ejemplo, si quieres guardar pokecristal en **C:\Users\<usuario>\Desktop**:

```bash
cd /cygdrive/c/Users/<usuario>/Desktop
```

(La unidad `C:\` de Windows se llama `/cygdrive/c/` en Cygwin. Sustituye `<usuario>` por tu nombre de usuario).

Ahora estás listo para [compilar **pokecristal**](#compilar-pokecristal).

## macOS

Instala [**Homebrew**](https://brew.sh/) siguiendo las instrucciones oficiales.

Abre **Terminal** y prepárate para introducir comandos.

Luego sigue las [instrucciones de **rgbds**](https://rgbds.gbdev.io/install#pre-built) para macOS e instala **rgbds 1.0.0**.

Ahora estás listo para [compilar **pokecristal**](#compilar-pokecristal).

## Linux

Abre **Terminal** e introduce los comandos según la distribución que uses.

### Debian o Ubuntu

Para instalar el software requerido para **pokecristal**:

```bash
sudo apt-get install make gcc git
```

Luego sigue las [instrucciones de **rgbds**](https://rgbds.gbdev.io/install#building-from-source) para compilar **rgbds 1.0.0** desde el código fuente.

### OpenSUSE

Para instalar el software requerido para **pokecristal**:

```bash
sudo zypper install make gcc git
```

Luego sigue las [instrucciones de **rgbds**](https://rgbds.gbdev.io/install#building-from-source) para compilar **rgbds 1.0.0** desde el código fuente.

### Arch Linux

Para instalar el software requerido para **pokecristal**:

```bash
sudo pacman -S make gcc git rgbds
```

Si quieres compilar e instalar **rgbds** tú mismo, sigue las [instrucciones de **rgbds**](https://rgbds.gbdev.io/install#building-from-source) para construir la versión 1.0.0 desde el código fuente.

### Termux

Para instalar el software requerido para **pokecristal**:

```bash
pkg install make clang git sed
```

Para instalar **rgbds**:

```bash
pkg install rgbds
```

Si quieres compilar e instalar **rgbds** tú mismo, sigue las [instrucciones de **rgbds**](https://rgbds.gbdev.io/install#building-from-source) para construir la versión 1.0.0 desde el código fuente.

### Otras distribuciones

Si tu distribución no está listada aquí, intenta encontrar el software requerido en sus repositorios:

- `make`
- `gcc` (o `clang`)
- `git`
- `rgbds`

Si `rgbds` no está disponible, sigue las [instrucciones de **rgbds**](https://rgbds.gbdev.io/install#building-from-source) para construir **rgbds 1.0.0** desde el código fuente.

Ahora estás listo para [compilar **pokecristal**](#compilar-pokecristal).

## Compilar pokecristal

Para descargar los archivos fuente de **pokecristal**:

```bash
git clone https://github.com/MicaelAlighieri/pokecristal
cd pokecristal
```

Para compilar **pokecristal.gbc**:

```bash
make
```

### Compilar con una versión local de rgbds

Si tienes proyectos que requieren diferentes versiones de `rgbds`, puede que no sea conveniente instalar la 1.0.0 globalmente. En su lugar, puedes poner los archivos en un directorio dentro de pokecristal, por ejemplo `pokecristal/rgbds-1.0.0/`. Luego especifícalo al ejecutar `make`:

```bash
make RGBDS=rgbds-1.0.0/
```
