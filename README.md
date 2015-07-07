# vim-auto-solarize

This will change your vim colour scheme to either solarized dark or light
depending on the time of day. It will additionally set a hotkey for
toggling background.

## Features

- 07:00 < time < 18:50 - sets background to light (solarized-light)
- 18:50 < time < 07:00 - sets background to dark (solarized-dark)
- `F8` key toggles background from light to dark
- Automatic theme switch upon file save

**The times and hotkeys are configurable** (see
[Configuration](#Configuration) for more information).

## Dependencies

This relies on [Solarized
VIM](http://ethanschoonover.com/solarized/vim-colors-solarized). See
[Intallation](#Installation) for more information.

## Installation

Using [Vundle](https://github.com/gmarik/Vundle.vim) is recommended way.
Update your `.vimrc`:

```vim
Bundle 'altercation/vim-colors-solarized'
Bundle 'edvinasme/vim-auto-solarize'
```

After editing `.vimrc` run `:BundleInstall`.

## Configuration

Configuration options for the plugin that can be set in `.vimrc`:
- **g:auto_solarize_start_light** (Default: *'0700'*) - controls the time when
  light background will be activated. Format is HHMM (HH - hours (0-23); MM-
  minutes (0-59)). To disable, set to `2400`. Example:

   ```vim
   let g:auto_solarize_start_light = '0700'
   ```

- **g:auto_solarize_start_dark** (Default: *'1850'*) - controls the time when
  dark background will be activated. Format is HHMM (HH - hours (0-23); MM-
  minutes (0-59)). To disable, set to `2400`. Example:

     ```vim
    let g:auto_solarize_start_dark = '1850'
    ```

- **g:auto_solarize_togglebg_key** (Default: *'<F8>'*) - allows you to change
  key for toggling background between light and dark. Example:

    ```vim
    let g:auto_solarize_togglebg_key = '<F8>'
    ```

## LICENSE

Copyright for portions of vim-auto-solarize are held by:
- Copyright (c) 2015 Edvinas Klovas <edvinas@pnd.io>
  For all portions of the code that are not from autoSolarize (see below).
- Copyright (c) 2015 Josh Teeter <joshteeter@gmail.com>
  For parts that are forked from
  [autoSolarize](www.vim.org/scripts/script.php?script_id=5210)

See [MIT License](LICENSE).
