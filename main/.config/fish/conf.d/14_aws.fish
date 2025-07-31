# set aws config file location
set -gx AWS_CONFIG_FILE "$XDG_CONFIG_HOME/aws/config"

# set aws credentials file location
set -gx AWS_SHARED_CREDENTIALS_FILE "$XDG_CONFIG_HOME/aws/credentials"
