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
# *insert Janani's work*
