Messing around with Postgres recursive queries.

See 
https://www.alibabacloud.com/blog/postgresql-graph-search-practices---10-billion-scale-graph-with-millisecond-response_595039

But updating to uses SEARCH and CYCLE introduced in PG14.

```
pgbench -M prepared -n -r -P 5 -f ./large.sql -c 50 -j 50 -t 100000
```
