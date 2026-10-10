import csv
import sys

reader = csv.DictReader(sys.stdin)

for row in reader:
    values = [
        f"date={row['date']}",
        f"city={row['city']}",
        f"temperature_2m_max={row['temperature_2m_max']}",
        f"temperature_2m_min={row['temperature_2m_min']}",
        f"temperature_2m_mean={row['temperature_2m_mean']}",
        f"apparent_temperature_max={row['apparent_temperature_max']}",
        f"precipitation_sum={row['precipitation_sum']}",
        f"precipitation_hours={row['precipitation_hours']}",
        f"relative_humidity_2m_mean={row['relative_humidity_2m_mean']}",
        f"wind_speed_10m_max={row['wind_speed_10m_max']}",
        f"wind_direction_10m_dominant={row['wind_direction_10m_dominant']}",
        f"shortwave_radiation_sum={row['shortwave_radiation_sum']}",
        f"et0_fao_evapotranspiration={row['et0_fao_evapotranspiration']}",
        f"weather_code={row['weather_code']}",
    ]

    print("\t".join(values))
