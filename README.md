# ZJU CS/SE Undergraduate Design Proposal LaTeX Template

Updated to the new style requirements at 2017-03-28.

## Dependencies

Arch Linux:

```bash
sudo pacman -S texlive-most texlive-langchinese
```

## Fonts

Execute `./install-fonts.sh`, which copies and installs fonts from a Windows partition.

## Build

Execute `make`, which invokes `latexmk`.

## Clean

Execute `make clean`, which removes all files ignored by `git`.
