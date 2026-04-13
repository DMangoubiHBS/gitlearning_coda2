
log using "C:\Users\dmangoubi\OneDrive - Harvard Business School\Daniel Projects\CoDA\GitHub Presenation - 2026\gitlearning_coda2\LOG_mpg_vs_foreign.txt", text replace
/*
TITLE: mpg_vs_foreign.do
PURPOSE: 
	*Explore whether foreign made cars are more efficient than domestic made cars
	*Provide an example of "evolving" research

Daniel Mangoubi, April 2026
DMangoubi@hbs.edu
*/

**# IMPORT DATA
* Import the Data
sysuse auto, clear 

* See what is in the dataset
describe 
list in 1/2 


**# Data Cleaning 
drop if price > 5000
drop if weight > 3000

**# EXPLORE DATA
*See relevant vars
tab foreign 
summarize price 


**# ANALYZE DATA
ttest mpg, by(foreign)

log close
