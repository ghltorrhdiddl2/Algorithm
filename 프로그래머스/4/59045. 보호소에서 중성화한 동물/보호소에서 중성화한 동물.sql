-- 보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물
-- Spayed, Neutered : 중성화됨
SELECT I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME from ANIMAL_INS I join ANIMAL_OUTS O on I.ANIMAL_ID=O.ANIMAL_ID
where I.SEX_UPON_INTAKE like 'Intact%' and (O.SEX_UPON_OUTCOME like 'Spayed%' or O.SEX_UPON_OUTCOME like 'Neutered%')
