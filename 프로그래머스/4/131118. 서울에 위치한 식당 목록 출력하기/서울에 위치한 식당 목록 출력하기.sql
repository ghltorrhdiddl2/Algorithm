-- 서울에 위치한, 소수점 세 번째 자리에서 반올림
SELECT I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS, round(avg(R.REVIEW_SCORE),2) as SCORE 
from REST_INFO I join REST_REVIEW R on I.REST_ID=R.REST_ID
where I.ADDRESS like '서울%'
group by I.REST_ID
order by SCORE desc, I.FAVORITES desc