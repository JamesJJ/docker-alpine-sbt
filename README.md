# SBT

*Java with sbt, based on alpine linux with openjdk's JDK*

## Usage example:

```
docker run -it -v "$(pwd)/:/app/" -v "$HOME/.sbt:/root/.sbt" -v "$HOME/.ivy2:/root/.ivy2" jamesjj/sbt sbt build
```

