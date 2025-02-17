--  결과는 공장 ID를 기준으로 오름차순 정렬
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS from FOOD_FACTORY
where ADDRESS like concat('강원도','%')
order by FACTORY_ID