status --is-interactive; and source (pyenv init - | psub)
status --is-interactive; and source (pyenv virtualenv-init - | psub)
set PATH "$HOME/.local/bin" $PATH
# https://docs.python-guide.org/dev/pip-virtualenv/#requiring-an-active-virtual-environment-for-pip
set -x PIP_REQUIRE_VIRTUALENV true

