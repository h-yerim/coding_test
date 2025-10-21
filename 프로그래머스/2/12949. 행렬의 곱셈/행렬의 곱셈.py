def solution(arr1, arr2):
    arr2_T = list(zip(*arr2))  
    answer = []
    for row in arr1:         
        new_row = []
        for col in arr2_T:     
            val = sum(a*b for a, b in zip(row, col))
            new_row.append(val)
        answer.append(new_row)
    return answer