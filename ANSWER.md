# File to use for part 2 of the test
# If you were not able to do Part 1 of the test, you can use the file recipes.json for transformation / analysis


import json 

f = 'C:\\Users\\prash\\Downloads\\marketing BI test\\hiring-test-Prasanth-master\\python\\2_analysis\\recipes.json'

rlist = []
for line in open(f, 'r'):
    rlist.append(json.loads(line))
    
#Reads the recipes json, extracts every recipe that has “Chilies” as one of the ingredients. 
#Please allow for mispelling of the word for example Chiles as well as the singular form of the word.    
recipe_list = [] 
recipe_number = []
n = 0
difficulty = [] 
new_list = []

for x in rlist:
    y = x['ingredients']
    y1 = y.split(" ")
    rname = x['name']
    if len(x['cookTime']) == 5:
        cooktime = x['cookTime'][2:4]
    elif len(x['cookTime']) == 4:
        cooktime = x['cookTime'][2]
    else:
        cooktime = 0

    if len(x['prepTime']) == 5:
        preptime = x['prepTime'][2:4]
    elif len(x['prepTime']) == 4:
        preptime = x['prepTime'][2]
    else:
        preptime = 0
    
    tot = str(cooktime) + str(preptime)
    
    try:
        n_tot = float(tot)
    except:
        pass
    if 'chilies' in y1:
        recipe_list.append(rname)
        recipe_number.append(n)
        n = n+1
        if n_tot > 60:   
            difficulty.append("Hard")
            tog = rname + '| Difficulty = ' + "Hard"
            new_list.append(tog)
        elif n_tot > 30 and n_tot < 60: 
            difficulty.append("Medium")
            tog = rname + '| Difficulty = ' + "Medium"
            new_list.append(tog)
        elif n_tot > 1 and n_tot < 30: 
            difficulty.append("Easy")
            tog = rname + '| Difficulty = ' + "Easy"
            new_list.append(tog)
        elif n_tot == 0:
            difficulty.append("Unknown")
            tog = rname + '| Difficulty = ' + "Unknown"
            new_list.append(tog)  
        else:
            difficulty.append("Unknown")
            tog = rname + '| Difficulty = ' + "Unknown"
            new_list.append(tog)      
    elif 'chiles' in y1:
        recipe_list.append(rname)
        recipe_number.append(n)
        n = n+1
        if n_tot > 60:   
            difficulty.append("Hard")
            tog = rname + '| Difficulty = ' + "Hard"
            new_list.append(tog)
        elif n_tot > 30 and n_tot < 60: 
            difficulty.append("Medium")
            tog = rname + '| Difficulty = ' + "Medium"
            new_list.append(tog)
        elif n_tot < 30: 
            difficulty.append("Easy")
            tog = rname + '| Difficulty = ' + "Easy"
            new_list.append(tog)
        elif n_tot == 0:
            difficulty.append("Unknown")
            tog = rname + '| Difficulty = ' + "Unknown"
            new_list.append(tog)
        else:
            difficulty.append("Unknown") 
            tog = rname + '| Difficulty = ' + "Unknown"
            new_list.append(tog)      
    elif 'chili' in y1:
        recipe_list.append(rname)
        recipe_number.append(n)
        n = n+1
        if n_tot > 60:   
            difficulty.append("Hard")
            tog = rname + '| Difficulty = ' + "Hard"
            new_list.append(tog)
        elif n_tot > 30 and n_tot < 60: 
            difficulty.append("Medium")
            tog = rname + '| Difficulty = ' + "Medium"
            new_list.append(tog)
        elif n_tot < 30: 
            difficulty.append("Easy")
            tog = rname + '| Difficulty = ' + "Easy"
            new_list.append(tog)
        elif n_tot == 0:
            difficulty.append("Unknown")
            tog = rname + '| Difficulty = ' + "Unknown"
            new_list.append(tog)
        else:
            difficulty.append("Unknown")
            tog = rname + '| Difficulty = ' + "Unknown"
            new_list.append(tog)
    else:
        n = n+1
        continue 
    




