-- NTILE() : PARTITION을 지정된 수 만큼의 등급으로 나누어 각 등급 번호를 출력
select ID,
    case
        when size = 1 then 'CRITICAL'
        when size = 2 then 'HIGH'
        when size = 3 then 'MEDIUM'
        else 'LOW'
    end as COLONY_NAME
from
    (select ID,  SIZE_OF_COLONY, NTILE(4) over (order by SIZE_OF_COLONY desc) as size from ECOLI_DATA) as RankSize
order by ID
        