def solution(name, yearning, photo):
    total = []
    for name_list in photo:
        score = []
        for n in name_list:
            if n in name:
                score.append(yearning[name.index(n)])
        total.append(sum(score))
    return total