Build Devcontainer images

**Devcontainer Image** 
 ```
 docker build -t "dquadrant/cardano-devcontainer:$(git describe --tags)" -f devContainer.Dockerfile .
 ```
**Ci Image** 
 ```
 docker build -t "dquadrant/cardano-devcontainer:$(git describe --tags)" -f devContainer.Dockerfile .
 ```
