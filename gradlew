#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Resolve symlinks
PRG="$0"
while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done

SAVED="$(pwd)"
cd "$(dirname "$PRG")/" > /dev/null
APP_HOME="$(pwd -P)"
cd "$SAVED" > /dev/null

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Escape application args
APP_ARGS=""
for arg in "$@"; do
  APP_ARGS="$APP_ARGS \"$arg\""
done

exec "$JAVA_HOME/bin/java" \
  ${DEFAULT_JVM_OPTS} \
  -classpath "$CLASSPATH" \
  org.gradle.wrapper.GradleWrapperMain "$@"
