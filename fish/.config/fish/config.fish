set -gx LC_ALL en_GB.UTF-8
set -gx LANG en_GB.UTF-8

set -gx VIRTUAL_ENV_DISABLE_PROMPT 1
set -gx PIP_REQUIRE_VIRTUALENV 1
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_AUTO_UPDATE 1

status --is-interactive; and source (pyenv init - | psub)
status --is-interactive; and source (pyenv virtualenv-init - | psub)
set PATH "$HOME/.local/bin" $PATH
# https://docs.python-guide.org/dev/pip-virtualenv/#requiring-an-active-virtual-environment-for-pip
set -x PIP_REQUIRE_VIRTUALENV true

if type -q subl
  set -x EDITOR subl
else
  set -x EDITOR vi
end;
