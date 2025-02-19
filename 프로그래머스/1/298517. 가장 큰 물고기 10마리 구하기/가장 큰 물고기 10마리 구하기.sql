-- 가장 큰 물고기 10마리의 ID와 길이
select ID, LENGTH from FISH_INFO
order by LENGTH desc, ID limit 10
