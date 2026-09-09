#!/bin/bash
# denver.yml's own 'command:' passes this to `bash --rcfile` instead of
# letting bash read /etc/bash.bashrc / ~/.bashrc on its own -- so it re-sources
# both itself, then reapplies denver's prompt prefix last. Some bashrc may
# overwrite PROMPT_COMMAND or PS1, discarding denver's marker.

[ -f /etc/bash.bashrc ] && source /etc/bash.bashrc
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

PS1="${SHELL_PROMPT_PREFIX}${PS1}"
