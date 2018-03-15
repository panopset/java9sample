rd /Q /S dist
call mvn clean install
echo "jar..."
jar -v --create --file target/com_panopset_java9sample.jar --main-class com.panopset.java9sample.Hello --module-version 1.0 -C target/classes .
echo "jlink..."
jlink -p target\com_panopset_java9sample.jar;%USERPROFILE%\apps\java\jdk9.0.4\jmods --output dist --add-modules com.panopset.java9sample --compress=2
echo "call..."
dist\bin\java -m com.panopset.java9sample
