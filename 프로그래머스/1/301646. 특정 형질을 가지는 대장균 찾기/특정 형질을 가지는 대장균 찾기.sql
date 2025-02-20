-- 2번 형질이 보유하지 않으면서 1번이나 3번 형질을 보유
select count(ID) as COUNT from ECOLI_DATA
where GENOTYPE&2=0 and GENOTYPE&5>0