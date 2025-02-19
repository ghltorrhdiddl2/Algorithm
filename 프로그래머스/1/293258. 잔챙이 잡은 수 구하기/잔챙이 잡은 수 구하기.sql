-- 코드를 작성해주세요
select count(ID) as FISH_COUNT from FISH_INFO
where COALESCE(LENGTH,0)<=10