-- 코드를 작성해주세요
select count(ID) as FISH_COUNT from FISH_INFO I join FISH_NAME_INFO N on I.FISH_TYPE=N.FISH_TYPE
where N.FISH_NAME in ('BASS','SNAPPER')