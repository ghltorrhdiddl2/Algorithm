-- 자식이 없다면 자식의 수는 0으로 출력
select p.ID, count(c.PARENT_ID) as CHILD_COUNT from ECOLI_DATA p left join ECOLI_DATA c on p.ID=c.PARENT_ID
group by p.ID