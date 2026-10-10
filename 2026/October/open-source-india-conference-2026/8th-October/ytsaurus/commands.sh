pipx install --user ytsaurus-client

export MY_ID=15
export YT_TOKEN="workshop-user-${MY_ID}"
export YT_PROXY="https://http-proxy-ws.benchmark.ytsaurus.tech"

yt list //home/workshop

yt list "//home/workshop/user-${MY_ID}"

yt list "//home/workshop/user-${MY_ID}/" # wrong

yt list "//home/workshop/user-${MY_ID}/bronze"

yt create table //home/workshop/user-${MY_ID}/my_first_table \
    --attributes "{schema=[{name=key;type=string};{name=value;type=int64}]}"

echo '{"key": "A", "value": 41} {"key": "B", "value": 42}' | \
    yt write-table "//home/workshop/user-${MY_ID}/my_first_table" --format json

echo '{"key": "A", "value": 41} {"key": "B", "value": 42}' | yt write-table "//home/workshop/user-${MY_ID}/my_first_table" --format json

yt read-table "//home/workshop/user-${MY_ID}/my_first_table" --format json

yt read-table "//home/workshop/user-${MY_ID}/bronze/trains_raw/2026-10-05T11-24-00Z" --format json # output too big

echo '{"event_id":"workshop-seed:train-12192-baq-20261007","ingested_at":"2026-10-07T12:00:00+05:30","train_no":"12192","station_code":"BAQ","payload_json":"{\"arrival\":{\"scheduled_at\":\"2026-10-07T11:30:00+05:30\",\"actual_at\":\"2026-10-07T11:42:00+05:30\",\"delay_min\":12},\"train_name\":\"Jabalpur Express\",\"station_name\":\"Ganj Basoda\"}"}'\
    | yt insert-rows "//home/workshop/user-${MY_ID}/bronze/queue" --format json

for i in {1..5}; do
    echo '{"event_id":"workshop-seed:train-12192-baq-20261007","ingested_at":"2026-10-07T12:00:00+05:30","train_no":"12192","station_code":"BAQ","payload_json":"{\"arrival\":{\"scheduled_at\":\"2026-10-07T11:30:00+05:30\",\"actual_at\":\"2026-10-07T11:42:00+05:30\",\"delay_min\":12},\"train_name\":\"Jabalpur Express\",\"station_name\":\"Ganj Basoda\"}"}' | yt insert-rows "//home/workshop/user-${MY_ID}/bronze/queue" --format json
done

yt create table //home/workshop/user-${MY_ID}/weather_daily \
    --attributes "{schema=[{name=date;type=date};{name=city;type=string};{name=temperature_2m_max;type=double};{name=temperature_2m_min;type=double};{name=temperature_2m_mean;type=double};{name=apparent_temperature_max;type=double};{name=precipitation_sum;type=double};{name=precipitation_hours;type=double};{name=relative_humidity_2m_mean;type=int64};{name=wind_speed_10m_max;type=double};{name=wind_direction_10m_dominant;type=int64};{name=shortwave_radiation_sum;type=double};{name=et0_fao_evapotranspiration;type=double};{name=weather_code;type=int64}]}" # causes problems since date is of type date but sometimes there's a string? O.o


yt write-table "//home/workshop/user-${MY_ID}/weather_daily" --format 'csv_with_names' < $HOME/Downloads/weather_daily.csv # wrong! no format called `csv_with_names`

python3 /Users/kp/github.com/karuppiah7890/learning-log/2026/October/open-source-india-conference-2026/8th-October/ytsaurus/csv_to_dsv.py < "$HOME/Downloads/weather_daily.csv"\
    | yt write-table "//home/workshop/user-${MY_ID}/weather_daily" \
        --format dsv

yt exists "//home/workshop/user-${MY_ID}/weather_daily"

yt remove "//home/workshop/user-${MY_ID}/weather_daily"

yt exists "//home/workshop/user-${MY_ID}/weather_daily"

yt remove "//home/workshop/user-${MY_ID}/weather_daily"

yt remove "//home/workshop/user-${MY_ID}/weather_daily" --force

yt create table //home/workshop/user-${MY_ID}/weather_daily \
    --attributes "{schema=[{name=date;type=string};{name=city;type=string};{name=temperature_2m_max;type=double};{name=temperature_2m_min;type=double};{name=temperature_2m_mean;type=double};{name=apparent_temperature_max;type=double};{name=precipitation_sum;type=double};{name=precipitation_hours;type=double};{name=relative_humidity_2m_mean;type=int64};{name=wind_speed_10m_max;type=double};{name=wind_direction_10m_dominant;type=int64};{name=shortwave_radiation_sum;type=double};{name=et0_fao_evapotranspiration;type=double};{name=weather_code;type=int64}]}" # causes problems since temperature_2m_max is of type double but sometimes there's a string? O.o

python3 /Users/kp/github.com/karuppiah7890/learning-log/2026/October/open-source-india-conference-2026/8th-October/ytsaurus/csv_to_dsv.py < "$HOME/Downloads/weather_daily.csv"\
    | yt write-table "//home/workshop/user-${MY_ID}/weather_daily" \
        --format dsv

yt remove "//home/workshop/user-${MY_ID}/weather_daily" --force

yt create table //home/workshop/user-${MY_ID}/weather_daily \
    --attributes "{schema=[{name=date;type=string};{name=city;type=string};{name=temperature_2m_max;type=string};{name=temperature_2m_min;type=double};{name=temperature_2m_mean;type=double};{name=apparent_temperature_max;type=double};{name=precipitation_sum;type=double};{name=precipitation_hours;type=double};{name=relative_humidity_2m_mean;type=int64};{name=wind_speed_10m_max;type=double};{name=wind_direction_10m_dominant;type=int64};{name=shortwave_radiation_sum;type=double};{name=et0_fao_evapotranspiration;type=double};{name=weather_code;type=int64}]}" # temperature_2m_min has problems, again, since temperature_2m_min is of type double but sometimes there's a string? O.o Weird

python3 /Users/kp/github.com/karuppiah7890/learning-log/2026/October/open-source-india-conference-2026/8th-October/ytsaurus/csv_to_dsv.py < "$HOME/Downloads/weather_daily.csv"\
    | yt write-table "//home/workshop/user-${MY_ID}/weather_daily" \
        --format dsv

yt remove "//home/workshop/user-${MY_ID}/weather_daily" --force

yt create table //home/workshop/user-${MY_ID}/weather_daily \
    --attributes "{schema=[{name=date;type=string};{name=city;type=string};{name=temperature_2m_max;type=string};{name=temperature_2m_min;type=string};{name=temperature_2m_mean;type=string};{name=apparent_temperature_max;type=string};{name=precipitation_sum;type=string};{name=precipitation_hours;type=string};{name=relative_humidity_2m_mean;type=int64};{name=wind_speed_10m_max;type=string};{name=wind_direction_10m_dominant;type=int64};{name=shortwave_radiation_sum;type=string};{name=et0_fao_evapotranspiration;type=string};{name=weather_code;type=int64}]}"

python3 /Users/kp/github.com/karuppiah7890/learning-log/2026/October/open-source-india-conference-2026/8th-October/ytsaurus/csv_to_dsv.py < "$HOME/Downloads/weather_daily.csv"\
    | yt write-table "//home/workshop/user-${MY_ID}/weather_daily" \
        --format dsv

cat /Users/kp/github.com/karuppiah7890/learning-log/2026/October/open-source-india-conference-2026/8th-October/ytsaurus/weather_daily.dsv \
    | yt write-table "//home/workshop/user-${MY_ID}/weather_daily" \
        --format dsv
