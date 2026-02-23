# Create the list 

numbers = [8, 3, 1, 5, 6, 7, 2, 4] 

# Sort the list in ascending order 

sorted_numbers = sorted(numbers) 

print(sorted_numbers)

even_numbers = [num for num in sorted_numbers if num % 2 == 0]

print(even_numbers)

greater_than_five = [num for num in sorted_numbers if num > 5] 

print(greater_than_five)