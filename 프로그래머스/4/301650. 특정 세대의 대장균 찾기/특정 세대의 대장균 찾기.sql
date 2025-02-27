-- 3세대의 대장균의 ID 를 출력
select ID from ECOLI_DATA 
where PARENT_ID in (
    select ID from ECOLI_DATA
    where PARENT_ID in (
        select ID from ECOLI_DATA
        where PARENT_ID is null
    )
)
order by ID