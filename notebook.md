# Notes on Archaeological Data Sonification Project


## Dataset used:

Peter Grave. "Asian Stoneware Jars Data". (2013) From Asian Stoneware Jars. Edited or directed by: Peter Grave. Released: 2013-06-04. Open Context. <http://opencontext.org/tables/cf870ece9298eb5f03912b5c6b221f78> DOI: https://doi.org/10.6078/M7J10120


## Dataset rows used:

* ICP-Ba (Barium)
* ICP-Ce (Cerium)
* ICP-Na (Sodium)
* ICP-K (Potassium)
* ICP-Ca (Calcium)

## Coll-friendly file

For this project, I needed to generate a .txt file that would play nicely with the coll object in Max. To do this, I wrote an R script to take the CSV, pick out the data points I wanted to use, and process them into a .txt. The format of a coll-friendly .txt is as follows:

```
0, [data] [data] [data] ...;
1, [data] [data] [data] ...;

...


```

In the coll object, the data are in the following order per line: barium, cerium, sodium, potassium, calcium.
