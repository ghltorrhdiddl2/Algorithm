-- 동일한 회원이 동일한 상품을 재구매, 재구매한 회원 ID와 재구매한 상품 ID를 출력
SELECT USER_ID,PRODUCT_ID from ONLINE_SALE
group by USER_ID, PRODUCT_ID
having count(*) > 1
order by USER_ID, PRODUCT_ID desc