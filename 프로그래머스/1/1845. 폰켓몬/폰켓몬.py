# 최대한 많은 종류의 폰켓몬을 포함해서 N/2마리를 선택하려
def solution(nums):
    max_num = len(nums)/2
    if len(set(nums)) >= max_num:
        return max_num
    else:
        return len(set(nums))