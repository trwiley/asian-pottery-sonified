# create_coll.R
# Purpose: generate a Max/MSP friendly .txt file that the coll object can use from
# Asian pottery ICP data.


#separate off the elements we want to sonify in Max/MSP.
attach(asian_pottery)

barium <- `ICP - Ba`
cerium <- `ICP - Ce`
sodium <- `ICP - Na`
potassium <- `ICP - K`
calcium <- `ICP - Ca`
year <- `Early BCE/CE`


detach(asian_pottery)


#grab the length of one of the vectors. This is to create the vector from 0-length needed for col.
number_length <- length(barium) - 1


#make the actual vectors containing 0-length,
numbers <- c(0:number_length)


#create the vector needed for the coll value list.
icp_list <- paste(barium, cerium, sodium, potassium, calcium, year, sep = " ")

#attach a semicolon at the end of the coll value list.
icp_semicol <- paste(icp_list, ";", sep = "")

#finally, marry the number list and the space-separated list of values.
coll_vec <- paste(numbers, icp_semicol, sep = ",")

#write to .txt file
write(coll_vec, file = "asian_pottery_coll.txt")

