#!/bin/bash
rm -rf dist
mvn clean install
echo "jar..."
jar -v --create --file target/com_panopset_java9sample.jar --main-class com.panopset.java9sample.Hello --module-version 1.0 -C target/classes .
echo "jlink..."
jlink -p target/com_panopset_java9sample.jar:/usr/lib/jvm/java-9-oracle/jmods --output dist --add-modules com.panopset.java9sample --compress=2
echo "Call our module, using the new built in JVM!"
./dist/bin/java -m com.panopset.java9sample
