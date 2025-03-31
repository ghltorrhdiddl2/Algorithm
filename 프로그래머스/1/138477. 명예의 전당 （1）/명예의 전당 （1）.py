def solution(k, score):
    arr = []; result = []
    for i in range(len(score)):
        if i<k:
            arr.append(score[i])
            arr.sort()
            result.append(arr[0])
        else:
            if score[i]>arr[0]:
                arr[0]=score[i]
                arr.sort()
                result.append(arr[0])
            else:
                result.append(arr[0])
    return result


