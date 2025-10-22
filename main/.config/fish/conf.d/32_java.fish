# set gradle data directory
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"

# set maven data directory
set -gx MAVEN_OPTS "-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"

# set maven config directory
set -gx MAVEN_ARGS "--settings $XDG_CONFIG_HOME/maven/settings.xml"