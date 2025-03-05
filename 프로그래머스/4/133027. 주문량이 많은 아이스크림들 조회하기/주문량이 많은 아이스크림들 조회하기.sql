-- 아이스크림 총주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로
SELECT F.FLAVOR from FIRST_HALF F join JULY J on F.FLAVOR=J.FLAVOR
group by F.FLAVOR
order by sum(F.TOTAL_ORDER) desc limit 3