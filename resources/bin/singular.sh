#!/bin/sh

## THE JAVA OPTS
JAVA_OPTS="$JAVA_OPTS -Xmx1536m"

## SCRIPT DIRECTORY FOLDER
DIRNAME=$(dirname "$0")

## PLATAFORM HOME
SINGULAR_PLATAFORM_HOME=$(cd "$DIRNAME/.."; pwd)

## LIB FOLDER
SINGULAR_LIB=$(cd "$SINGULAR_PLATAFORM_HOME/lib"; pwd)

## WILDFLY FOLDER
SINGULAR_WILDFLY=$(cd "$SINGULAR_PLATAFORM_HOME/wildfly"; pwd)

## ADITIONAL MODULES
JBOSS_MODULEPATH=$SINGULAR_LIB:$SINGULAR_WILDFLY/modules

## EXPORT JBOSS_MODULEPATH IF CONFIGURED
if [ "x$JBOSS_MODULEPATH" != "x" ]; then
  export JBOSS_MODULEPATH
fi

## EXPORT JAVA_HOME  IF CONFIGURED
if [ "x$JAVA_HOME" != "x" ]; then
  export JAVA_HOME
fi

## EXPORT JAVA_OPTS  IF CONFIGURED
if [ "x$JAVA_OPTS" != "x" ]; then
  export JAVA_OPTS
fi

echo '==================================================================='
echo '    ____                  _____ _                   __             '
echo '   / __ \____  ___  ____ / ___/(_)___  ____ ___  __/ /___ ______   '
echo '  / / / / __ \/ _ \/ __ \\__ \/ / __ \/ __ `/ / / / / __ `/ ___/   '
echo ' / /_/ / /_/ /  __/ / / /__/ / / / / / /_/ / /_/ / / /_/ / /       '
echo ' \____/ .___/\___/_/ /_/____/_/_/ /_/\__, /\__,_/_/\__,_/_/        '
echo '     /_/                            /____/                         '
echo '                                                                   '
echo 'Initializing Singular Platform - $(date)'
echo ''

sh $SINGULAR_WILDFLY/bin/standalone.sh -Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true $@
