# 완주하지 못한 선수의 이름을 return, 동명이인
import collections
def solution(participant, completion):
    person = collections.Counter(participant)-collections.Counter(completion)
    return list(person)[0]