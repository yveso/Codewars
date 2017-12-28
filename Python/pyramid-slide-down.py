'''
https://www.codewars.com/kata/pyramid-slide-down/train/python

Commented version:
https://github.com/yveso/ProjectEuler/blob/master/0001-0100/0001-0020/0018/0018.py
'''

def longest_slide_down(pyramid):
    costs = { (0, 0): pyramid[0][0] }

    for row_index in range(len(pyramid) - 1):
        for col_index in range(len(pyramid[row_index])):
            check_next_row_points_for(pyramid, row_index, col_index, costs)

    return max(costs.values())

def check_next_row_points_for(pyramid, row, col, costs):
    costs_for_current_location = costs[(row, col)]
    next_row = row + 1
    costs_left = pyramid[next_row][col] + costs_for_current_location
    if (next_row, col) in costs.keys():
        if costs_left > costs[(next_row, col)]:
            costs[(next_row, col)] = costs_left
    else:
        costs[(next_row, col)] = costs_left
    costs_right = pyramid[next_row][col + 1] + costs_for_current_location
    costs[(next_row, col + 1)] = costs_right
