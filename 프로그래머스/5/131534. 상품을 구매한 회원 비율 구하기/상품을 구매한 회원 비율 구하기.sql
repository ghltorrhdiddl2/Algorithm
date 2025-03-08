-- 2021년에 가입한
SELECT year(O.SALES_DATE) as YEAR, month(O.SALES_DATE) as MONTH, count(distinct O.USER_ID) as PURCHASED_USERS, round(count(distinct O.USER_ID)/(select count(*) from USER_INFO where year(JOINED)=2021),1) as PUCHASED_RATIO from ONLINE_SALE O
where O.USER_ID in (select USER_ID from USER_INFO where year(JOINED)=2021)
group by year(O.SALES_DATE), month(O.SALES_DATE)
order by YEAR, MONTH