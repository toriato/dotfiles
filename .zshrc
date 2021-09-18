# initalize zgen and prezto
if [ ! -d "${ZDOTDIR:-$HOME}/.zgen" ]; then
  git clone https://github.com/tarjoilija/zgen.git "${ZDOTDIR:-$HOME}/.zgen"
  
  source "${ZDOTDIR:-$HOME}/.zgen/zgen.zsh"
  zgen prezto
  zgen save
  source "$ZGEN_DIR/init.zsh"

  for i in 'zlogin' 'zlogout'; do
    if [ ! -f "${ZDOTDIR:-$HOME}/.$i" ]; then
      ln -s "$ZPREZTODIR/runcoms/$i" "${ZDOTDIR:-$HOME}/.$i"
    fi
  done
fi

# zgen
source "${ZDOTDIR:-$HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
  zgen prezto

  # prezto modules
  for i in \
    'environment' \
    'terminal' \
    'editor' \
    'history' \
    'directory' \
    'spectrum' \
    'utility' \
    'completion' \
    'history-substring-search' \
    'prompt'
  do zgen prezto $i; done

  # modules
  for i in \
    'zdharma/fast-syntax-highlighting' \
    'Aloxaf/fzf-tab'
  do zgen load $i; done

  zgen save

  source "$ZGEN_DIR/init.zsh"
fi

# disable autocomplection
unsetopt correct
unsetopt correctall
DISABLE_CORRECTION=true

# run profile.d scripts
for i in ${XDG_CONFIG_HOME:-$HOME/.config}/profile.d/*; do . "$i"; done
