set hive.fetch.task.conversion=none;

create table t_n3(a int, b int);

insert into t_n3 values (1,2),(1,2),(1,3),(2,4),(20,-100),(-1000,100),(4,5),(3,7),(8,9);

select * from t_n3 order by 2, 1;

select * from t_n3 order by 1, 2;

select * from t_n3 union select * from t_n3 order by 1, 2;

select * from t_n3 union select * from t_n3 order by 2, 1;

select * from t_n3 union select * from t_n3 order by 1, 2;

select * from (select a, count(a) from t_n3 group by a)subq order by 2, 1;

select * from (select a,b, count(*) from t_n3 group by a, b)subq order by 3, 2 desc, 1;

values(1+1, 2, 5.0, 'a'), (-12, 2, 5.0, 'a'), (100, 2, 5.0, 'a') order by 1 limit 2;
