# source asdf java plugin set-java-home if it exists
set _asdf_set_java_home "$ASDF_DATA_DIR/plugins/java/set-java-home.fish"
test -f "$_asdf_set_java_home" && source "$_asdf_set_java_home"

# set java user root
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"

# set gradle data directory location
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"

# set maven data directory location
set -gx MAVEN_OPTS "-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"

# set maven config file location
set _maven_config_file "$XDG_CONFIG_HOME/maven/settings.xml"
set -gx MAVEN_ARGS "--settings $_maven_config_file"
alias mvn "mvn -gs $_maven_config_file"
