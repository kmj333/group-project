# group-project
# *insert Anna's work*

# What is the most popular primary breed?
### I started cleaning by first making sure there were no duplicates or misspellings. I decided to keep the data set in German because translation wasn't critical in increasing the efficacy of my research. I started by making a pivot table of all the breeds represented so I could see the overall data that I was working with. Overall I was working with 304 breeds. 

### I then loaded the data into R studio to create visualizations for the data. Since 304 breeds made the data set too big to read in a graph axis, I decided to use the pivot table setting to find the top 10 breeds. The top ten breeds based off the pivot table were:
<img width="399" alt="Screen Shot 2021-12-12 at 4 44 12 PM" src="https://user-images.githubusercontent.com/91634200/145736587-6eded52e-7a58-46e6-a5c5-e0a791cb6b2a.png">

###  In R, I created a new data set that only contained the rows from the top 10 breeds. 
![image](https://user-images.githubusercontent.com/91634200/145736871-3bbdb87b-f23c-4ee7-bc40-b708308a47e2.png)
This is a bar graph that displays the counts of the top ten breeds from this data set. 
![image](https://user-images.githubusercontent.com/91634200/145738010-1c98ac88-81bc-4c07-911a-9982e8cdb112.png)
This bar graph shows how much of the top ten breeds contain mixed breeds.
### As we can clearly see from the pivot table and the graphic above, the most popular primary breed is the Mischling Klein. 

# What primary breed is the most popular to be mixed?
### First thing I did was use the "UNIQUE" function in excel to make sure "Mischling" was the only indication of mixed breeds in the "Primary Hybrid" column. Then I used the pivot table again but this time separated the primary breed row and sorted it by the number of hybrids in each breed by ascending order. Again, there was too many breeds so I had to cut it down to the top ten hybrid breeds:  
<img width="399" alt="Screen Shot 2021-12-12 at 5 06 24 PM" src="https://user-images.githubusercontent.com/91634200/145737551-e8ccea3d-00a3-45c7-b52c-b98e4a2453ef.png">'
### Then in R studio, I did the same conversion for a new data set but this time with the hybrid filtering added into it.
![image](https://user-images.githubusercontent.com/91634200/145737642-86831f69-3cab-4ebf-b617-128caffecd41.png)
Here is the bar chart that displays the top counts of hybrids by breed.
### With the chart and the pivot table, we can see that the most common primary breeds to be classified as "mixed" are the Labrador Retriever and Terrier. 



# *insert Karen's work*
![image](https://github.com/kmj333/group-project/blob/main/agedist.png)

# *insert Janani's work*
# What is the most popular primary breed in each district?
### I started by checking for mispellings and other errors in the primary breed column and fixed them. I then used a pivot table to sort the count of each dog breed by district, and then order them from most to least numerically. I adjusted this pivot table a bit and transferred it to another Excel sheet to produce the following dataset. The picture below shows only the top ten breeds in each district. 

![Top Breed in each District 1](https://user-images.githubusercontent.com/91508008/145883698-5d9d54dc-b491-4159-a193-c1b31b2e54cb.JPG)
![Top Breed in each District 2](https://user-images.githubusercontent.com/91508008/145883769-bc75c62b-2257-4851-9aee-496a5a2f0cc2.JPG)

Mischling klein and Chihuahua take the top spot in every district, with the Labrador Retreiver making appearances in a few districts in second place.

### I also created a boxplot representation of the Chihuahua and Mischling klein distributions across districts, as well as their Tukey Five Number Summaries. 

![image](https://user-images.githubusercontent.com/91508008/145884549-8519cb61-d15f-4197-bf44-f7d920a656fa.png)
![image](https://user-images.githubusercontent.com/91508008/146235179-d3814ed9-59a0-4a4f-a1fe-fcf36d2ceed8.png)
![image](https://user-images.githubusercontent.com/91508008/145890210-3bc7cb18-301b-41c2-8cc8-5fa5856c722f.png)

I also retreived the Tukey Five Number Summary for the percentages of the top dog breed (total, Mischling klein and Chihuahua). District 12 was an outlier in the total and Chihuahua distributions, having 14.3% of its dogs as the top breed. District 3 was an outlier in the Mischling klein distribution, having 11.3% of its dogs as the top breed.


![image](https://user-images.githubusercontent.com/91508008/146298637-d598dd6f-7c57-4678-99d1-e3cc45f6ab08.png)
![image](https://user-images.githubusercontent.com/91508008/146298657-3706962c-2b60-46bd-9589-e998e057d94d.png)


# What is the most popular dog color in each district?
### This question required more cleaning of the color column than the dog breed question did. There were many entries where the color was listed as a mix, or as a light/dark color, such as beige/weiss (beige/white) or dunkelbraun (dark brown). I decided that in order to reduce the number of color categories, to simply take the main color listed. So for mixed colors, I took the first one listed. For the colors with light or dark, I removed the modifier. There were also a couple where some entries were listed in English instead of German - here I switched as many as I could to the German equivalent, since most of the datatset was in German.

### I used the formula 

### =IF(ISNUMBER(SEARCH("schwarz/", M2)), "schwarz",  M2)

### with variations to the color and column to produce the data I wanted. I ended up having to use this formula over 15 times to switch out all the various combinations of colors and symbols used in the entries. Still there were a few categories left with only 2 or 3 entries, which I decided to leave as is since I couldn't decide which main color category they belonged in. 

### I then used a pivot table to make a similar table to the one for the top dog breeds. I have included the top 10 dog colors for each district in the picture below.

![top color district1](https://user-images.githubusercontent.com/91508008/145887418-91e9455b-a11a-4416-a2c3-6da02d6e9cd9.JPG)
![top color district2](https://user-images.githubusercontent.com/91508008/145887440-4de199d2-c9be-4c29-bdaf-5da3c48ccff1.JPG)

Schwarz, braun, and weiss (black, brown, and white) take the top three spots, with a bit of switching in position for the latter two. Tricolor, beige, rot, and grau follow the top three in every district in varying positions. 

### Here I have created boxplots for the top three color distributions, along with their Tukey Five Number Summary.

![image](https://user-images.githubusercontent.com/91508008/145889554-7d4d4efd-6de7-4686-bee0-83c9673dddcd.png)
![image](https://user-images.githubusercontent.com/91508008/145889575-6cbccb06-289b-4da1-b5db-3dbdf9b89769.png)
![image](https://user-images.githubusercontent.com/91508008/145889589-119d61da-561e-4195-ac96-11b5da7cb8b4.png)
![image](https://user-images.githubusercontent.com/91508008/145890067-e856cbb4-3f69-4cd0-99f0-55d789bde680.png)









