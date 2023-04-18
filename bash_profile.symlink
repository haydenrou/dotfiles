# When loading wsl, bashrc is not loaded.
# https://github.com/microsoft/WSL/issues/2067

if [ -f $HOME/.bashrc  ]; then
    source $HOME/.bashrc
fi

export PATH=$HOME/.docker/bin:/bin:$HOME/bin:$PATH
export ARCHFLAGS="-arch arm64"
. "$HOME/.cargo/env"
