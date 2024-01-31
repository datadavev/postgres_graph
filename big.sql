\set id floor(random()*10000000)::bigint
insert into a select :id, ((width_bucket(:id,1,10000000,2000)-1)*50000 + (random()*50000)::int) from generate_series(1,1000) on conflict (c1,c2) do nothing;      

