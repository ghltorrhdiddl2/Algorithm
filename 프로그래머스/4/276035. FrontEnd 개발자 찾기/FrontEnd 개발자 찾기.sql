-- 코드를 작성해주세요
select distinct D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME from DEVELOPERS D join SKILLCODES S
where D.SKILL_CODE & S.CODE = S.CODE and S.CATEGORY='Front End'
order by D.ID