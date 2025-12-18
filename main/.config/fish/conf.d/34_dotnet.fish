# set dotnet cli data directory location
set -gx DOTNET_CLI_HOME "$XDG_DATA_HOME/dotnet"

# set nuget packages directory location
set -gx NUGET_PACKAGES "$XDG_DATA_HOME/nuget"
