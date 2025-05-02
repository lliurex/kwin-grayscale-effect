# KWin Grayscale Effect

Configurable grayscale effect for KWin window manager and KDE desktop environment.

# Installation

Either install manual by coping files or use `kpackagetool6`. It may work with `kpackagetool5` but it is untested.

## Automated
1. [Download](https://github.com/lliurex/kwin-grayscale-effect/archive/refs/heads/plasma6.zip) or Git Pull
2. Extract the zip archive, if downloaded.
```{.bash}
unzip kwin-grayscale-effect-plasma6.zip
```
3. Enter the repository directory, for example: `cd kwin-grayscale-effect-plasma6`
4. Install the plugin
```{.bash}
kpackagetool6 --type KWin/Effect --install kwin6_effect_grayscale
```

## Manual
1. [Download](https://github.com/lliurex/kwin-grayscale-effect/archive/refs/heads/plasma6.zip) or Git Pull
2. Extract the zip archive, if downloaded.
```{.bash}
unzip kwin-grayscale-effect-plasma6.zip
```
3. Enter the repository directory, for example: `cd kwin-grayscale-effect-plasma6`
4. Copy "kwin6_effect_grayscale" folder to "/usr/share/kwin/effects/", using e.g.

```{.bash}
sudo cp -r kwin6_effect_grayscale /usr/share/kwin/effects/
```

# Testing 
To test it for the first time, open `System Settings` > `Desktop Behavior`. In there, open `Desktop Effects`. You should see `Grayscale` in the `Appearance` section. Toggle it a couple of times, and you'll see the grayscale effect at work.


* Optionally you can run the following command: 
```{.bash}
qdbus org.kde.KWin /Effects org.kde.kwin.Effects.loadEffect kwin4_effect_grayscale
```

* Another option is manually editing the config. Add `kwin6_effect_grayscaleEnabled=true` to `[Plugins]` section in "~/.config/kwinrc" (as a normal user).
   In case the `[Plugins]` section is missing from the kwinrc file, just add it.
```{.bash}
kate  ~/.config/kwinrc
```

### Known Quirks

- **Settings doesn't apply**:
  - In System Settings, uncheck "Grayscale" and re-check then apply.
  - Make sure the persmissions in are set to `drwxr-xr-x` for the `kwin6_effect_grayscale` folder and its content. If not, run (as root)
    ```{.bash}
    chmod 755 /usr/share/kwin/effects/kwin6_effect_grayscale/
    find /usr/share/kwin/effects/kwin6_effect_grayscale/ -type d -exec chmod 755 {} \;
    ```
