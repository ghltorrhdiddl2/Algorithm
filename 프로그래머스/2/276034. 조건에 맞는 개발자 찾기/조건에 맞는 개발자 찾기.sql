-- Python이나 C#
select distinct ID, EMAIL, FIRST_NAME, LAST_NAME from DEVELOPERS as D join SKILLCODES as S on (D.SKILL_CODE&S.CODE)=S.CODE and S.NAME in ('Python','C#') 
order by ID