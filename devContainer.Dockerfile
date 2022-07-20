FROM  dquadrant/cardano-dev as cabalDependency
WORKDIR /app
COPY ./bootstrap-project/ .
RUN cabal update
RUN sh -c 'echo ":q" | cabal repl'

FROM dquadrant/cardano-dev
COPY --from=cabalDependency ${HOME:-/root}/.cabal/ ${HOME:-/root}/.cabal 