```
Connect to the YTsaurus MCP

Inspect the table //home/workshop/user-15/bronze/trains_raw.
Review its schema and a small sample of rows, then write:
1. A concise description of the table.
2. A short explanation of each column.
3. Any data-quality issues you notice.
```

```
Download these CSV files from Hugging Face:
https://huggingface.co/datasets/AkshayKarthick/india-weather-air-quality/resolve/main/cities.csv
https://huggingface.co/datasets/AkshayKarthick/india-weather-air-quality/resolve/main/weather_daily.csv

Analyze and import them into the workshop cluster as typed static tables:
//home/workshop/user-15/cities
//home/workshop/user-15/weather_daily

Use the first CSV row as column names and infer appropriate column types.

Add a concise description for each dataset and a meaningful description for every column.

Do not overwrite an existing table without asking me first.
After the import:
1. Verify the schema and row count of each table.
2. Show me a small sample from each table.
```

```
Inspect //home/workshop/user-15/bronze/trains_raw and build a cleaned Silver-layer table:
//home/workshop/user-15/silver/trains
The query should:
- read all data from the Bronze composite table;
- parse useful train and station fields from payload_json;
- remove duplicate events;
- exclude records where the actual arrival time is missing;
- use appropriate data types for the resulting columns;
- write the result into a single static table;
- completely replace the destination table on every run.
Show me the query before executing it. After execution verify the output schema and row count,
check duplicates were removed, and confirm no rows with a missing actual arrival remain.
```

```
Inspect these tables: //home/workshop/user-15/silver/trains, //home/workshop/user-15/cities, //home/workshop/user-15/weather_daily

Create a YQL query that enriches Silver train events with city and weather. Before writing: inspect schemas and rows; determine how stations map to cities; verify join columns; explain the join strategy and limitations.

Write to //home/workshop/user-15/gold/train_weather preserving one row per Silver train event, including train, city and weather columns. Keep unmatched events with LEFT JOIN and make missing values visible as NULL. Completely replace the table each run. Show the query before executing. After execution: give the query ID; verify schema and row count; report rows matched to a city and to weather; show examples of matched and unmatched rows.
```
