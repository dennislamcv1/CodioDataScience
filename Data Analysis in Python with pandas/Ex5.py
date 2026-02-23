ages = [22, 35, 18, 27, 30, 40, 19, 25]
sorted_ages = sorted(ages, reverse=True) 
print(sorted_ages)

ages_below_25 = [age for age in sorted_ages if age < 25] 
print(ages_below_25)

ages_25_to_35 = [age for age in sorted_ages if 25 <= age <= 35] 
print(ages_25_to_35)
