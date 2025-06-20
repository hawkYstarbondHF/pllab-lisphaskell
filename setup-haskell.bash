curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh
source /home/codespace/.ghcup/env
cabal update
cabal install --lib HUnit
cabal install --lib silently