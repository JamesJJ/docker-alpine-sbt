# SBT

*Java with sbt, based on openjdk's slim debian JDK image*

## Usage example:

```
docker run -it -v "$(pwd)/:/app/" -v "$HOME/.sbt:/root/.sbt" -v "$HOME/.ivy2:/root/.ivy2" jamesjj/sbt sbt build
```

