def find_similiar(str1,str2):
    simi = []
    for c in str1:
        if c in str2:
            simi.append(c)
    return simi

string1=""
string2=""
print("Enter string1: ")
string1=str(input())
print("Enter string2: ")
string2=str(input())
result = find_similiar(string1,string2)

print('\nTotal ',len(result),' characters are similiar as shown below: ')
print(result)