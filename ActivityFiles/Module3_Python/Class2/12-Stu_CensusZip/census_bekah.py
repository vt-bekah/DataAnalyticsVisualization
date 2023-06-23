import os
import csv

# use the csvpath below if running terminal in VScode
# census_csv = os.path.join(os.getcwd(), "DataAnalyticsVisualization\ActivityFiles", "Module3_Python\Class2", "12-Stu_CensusZip", "Resources", "census_starter.csv")
# use the csvpath below if running from GitBash in the comics.py location
census_csv = os.path.join(os.getcwd(), "Resources", "census_starter.csv")

# Lists to store data
place = []
population = []
income = []
poverty_count = []
poverty_rate = []
county = []
state = []

# with open(udemy_csv, encoding='utf-8') as csvfile:
with open(census_csv, encoding='utf-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    # "Place,Population,Median Age,Household Income,Per Capita Income,Employed Civilians,Unemployed Civilians,People in the Military,Poverty Count"
    for row in csvreader:
        # Add place
        place.append(row[0])
        # Add population
        population.append(row[1])
        # Add per capita income
        income.append(row[4])
        # Add poverty count
        poverty_count.append(row[8])
        # Determine poverty rate to 2 decimal places, convert to string; (percentage of population living in poverty)
        poverty_rate_num = (float(row[8])/float(row[1]))*100
        poverty_rate.append(str(round(poverty_rate_num, 2)) + "%")
        # Split the place into county and state
        county.append(row[0].split(", ")[0])
        state.append(row[0].split(", ")[1])

# Zip lists together; I cast this as a list, but that may not be required... list was part of the in class example
clean_data = list(zip(place, population, income, poverty_count, poverty_rate, county, state))

# print(clean_data[0]) # print to check myself :)

# Set variable for output file
output_file = os.path.join("census_final.csv")

#  Open the output file
with open(output_file, "w", newline='') as datafile:
    writer = csv.writer(datafile)

    # Write the header row
    writer.writerow(["Place", "Population", "Per Capita Income", "Poverty Count", "Poverty Rate",
                    "County", "State"])

    # Write in zipped rows
    for r in clean_data:
        writer.writerow(r)
