# ensure ffmpeg data directory exists
set _ffmpeg_data_dir "$XDG_DATA_HOME/ffmpeg"
test -d "$_ffmpeg_data_dir" || mkdir -p "$_ffmpeg_data_dir"

# set ffmpeg data directory location
set -gx FFMPEG_DATADIR "$_ffmpeg_data_dir"
