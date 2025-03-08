# 최대한 많은 종류의 폰켓몬을 포함해서 N/2마리를 선택하려
def solution(nums):
    return min(len(set(nums)), len(nums)/2)