
```sql
CREATE TABLE bloat_test (
    id serial PRIMARY KEY,
    data text
);

INSERT INTO bloat_test(data)
SELECT repeat('hello world ', 20)
FROM generate_series(1, 500000);

SELECT pg_total_relation_size('bloat_test');

SELECT pg_size_pretty(pg_total_relation_size('bloat_test'));

ALTER TABLE bloat_test SET (autovacuum_enabled = false);

UPDATE bloat_test
SET data = repeat('updated text ', 20);

UPDATE bloat_test
SET data = md5(random()::text);

SELECT pg_total_relation_size('bloat_test');

SELECT pg_size_pretty(pg_total_relation_size('bloat_test'));

SELECT
    relname,
    n_live_tup,
    n_dead_tup
FROM pg_stat_user_tables
WHERE relname = 'bloat_test';

VACUUM bloat_test;

SELECT
    relname,
    n_live_tup,
    n_dead_tup
FROM pg_stat_user_tables
WHERE relname = 'bloat_test';

SELECT pg_total_relation_size('bloat_test');

VACUUM FULL bloat_test;

-- OR

CLUSTER bloat_test USING bloat_test_pkey;

SELECT pg_total_relation_size('bloat_test');
```

```sql
SELECT n_tup_hot_upd
FROM pg_stat_user_tables
WHERE relname='hot_test';
```
