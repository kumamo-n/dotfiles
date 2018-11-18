# vim:ft=zplug

ZPLUG_SUDO_PASSWORD=
ZPLUG_PROTOCOL=ssh

zplug "zplug/zplug", hook-build:'zplug --self-manage'

zplug "~/.zsh", from:local, use:"<->_*.zsh"

zplug "zsh-users/zsh-completions"
#zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "glidenote/hub-zsh-completion"
zplug 'Valodim/zsh-curl-completion'

zplug "stedolan/jq", \
    as:command, \
    from:gh-r, \
    rename-to:jq

zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    rename-to:"fzf", \
    frozen:1

zplug "monochromegane/the_platinum_searcher", \
    as:command, \
    from:gh-r, \
    rename-to:"pt", \
    frozen:1

zplug "peco/peco", \
    as:command, \
    from:gh-r, \
    frozen:1

zplug "motemen/ghq", \
    as:command, \
    from:gh-r, \
    rename-to:ghq

zplug "fujiwara/nssh", \
    as:command, \
    from:gh-r, \
    rename-to:"nssh", \
    frozen:1

zplug "tcnksm/ghr", \
    as:command, \
    from:gh-r

zplug "philovivero/distribution", \
    as:command, \
    use:distribution, \
    if:'(( $+commands[perl] ))'

zplug "mitmproxy/mitmproxy", \
    as:command, \
    hook-build:"sudo python ./setup.py install"

zplug "wg/wrk", \
    as:command, \
    hook-build:"make"

zplug "mattn/jvgrep", as:command, from:gh-r

zplug "reorx/httpstat", \
    as:command, \
    use:'(httpstat).py', \
    rename-to:'$1', \
    if:'(( $+commands[python] ))'

zplug "jhawthorn/fzy", \
    as:command, \
    hook-build:"make && sudo make install"

zplug "mrowa44/emojify", as:command



zplug 'andialbrecht/sqlparse', \
    as:command, \
    hook-build:'python setup.py install'

zplug 'dtan4/ghrls', \
    as:command, \
    hook-build:'go get -d && go build'

zplug 'tianon/gosleep', \
    as:command, \
    hook-build:'go get -d ./src/gosleep/... && go build ./src/gosleep/...'

zplug 'mutantcornholio/prok', \
    as:command, \
    use:'(*).sh', \
    rename-to:'$1'


zplug 'Fakerr/git-recall', \
    as:command, \
    use:'git-recall'
