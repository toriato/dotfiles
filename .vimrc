for f in split(glob(exists('$XDG_CONFIG_HOME') ? $XDG_CACHE_HOME : '$HOME/.config' . '/vim/*.vim'), '\n')
  exe 'source' f
endfor
