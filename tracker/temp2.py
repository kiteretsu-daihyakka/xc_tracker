def find_sum(num):
    sum_str = str(num)
    last_indx = len(sum_str)-1
    sum = 0
    for c in sum_str:
        sum += int(c)
    return sum

num = None
print("Enter number: ")
num = int(input())

sum = find_sum(num)

print("\nSum is: ")
print(sum)