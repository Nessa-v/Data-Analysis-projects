NAME OF PROGRAMMER: Vanessa Nwankwo

PROJECT TITLE: Investigating Netflix Movies

PROGRAMMING LANGUAGE USED FOR ANALYSIS: Python

ABOUT THE DATASET: The Netflix Movies Dataset was obtained from DataCamp, with 4812 rows and 11 columns. The Excel file can be found in the 'dataset' folder contained within the Netflix_movie_analysis folder.

| Column | Description |
|--------|-------------|
| `show_id` | The ID of the show |
| `type` | Type of show |
| `title` | Title of the show |
| `director` | Director of the show |
| `cast` | Cast of the show |
| `country` | Country of origin |
| `date_added` | Date added to Netflix |
| `release_year` | Year of Netflix release |
| `duration` | Duration of the show in minutes |
| `description` | Description of the show |
| `genre` | Show genre |

PROJECT AIM: To perform exploratory data analysis (EDA) on Netflix's movie catalogue, to uncover insights about content trends, focusing on movies released in the 1990s. This analysis will help to understand patterns in genres, durations, country of origin, and other key features that defined Netflix’s offerings during that decade.

PROJECT OBJECTIVES

1. Data Preprocessing to fix the data.
2. Analysing Yearly Trends.
3. Calculate and Visualise Movie Duration Statistics.
4. Genre Analysis

# editing in progress

ANALYSIS

1. Data Prerocessing:

netflix_df.info() gives information of the dataset which was read into a python dataframe. It shows that the dataset contains 4,812 rows and 11 columns. Every column is marked as non-null. 

The columns 'release_year' and 'duration' are of datatype 'int' which is good for numerical analysis. The rest are of type object (string/text) which is a standard for descriptive fields.

All columns report 0 missing values, which is typically unusual, but this signifies that it was completely filled in by DataCamp.

'date_added' column was standardised into the format 'YYYY-MM-DD'. The dataset also has unique identifiers for each record and no redundancy.

Summary:

Cleaned and filtered the Netflix movie data, standardising date formats and verifying data integrity (e.g., duplicates, missing values). Relevant records (1990s movies data) were also extracted into a dataframe for further analysis.

2. Calculating most frequent movie duration
   
The dataframe was filtered to keep only data where 'type' = movie and release year is between 1990 and 2000.

To calculate the most frequent movie duration, the .idmax() and .id() functions were used to determine the most fequent movie duration (94 minutes) and how many times it occurred (7). 

[IMAGE]

[IMAGE]

Key Insights:

The most frequent movie duration among 1990s Netflix movies is 94 minutes. It means there is no extreme concentration in any runtime, but 94 mins occurs most often.

The sudden peak could mean a possible industry standard or preference at the time.

Regardless, this duration balances storytelling depth without being too long for audiences.

Most movies fall between 90 to 120 minutes.

There are still a good number of movies above 150 mins, showing that long movies were not rare either.

Summary:

The most common duration among Netflix's 1990s movies is 94 minutes, with 7 movies sharing that runtime. The frequency is modest, and the chart suggests a fairly normal distribution. Most movies fall between 90 and 120 minutes, which also suggests standard industry runtimes.

3. Analysing yearly trends

The dataset was grouped by release_year and  the number of movie entries for each year in the 1990s was counted.

Key Insights:

From 1990 to 1996, movie counts per year hovered around 14–16 movies per year.

Starting in 1997, there is a noticeable increase, reaching 26 movies per year consistently through 1999.

This suggests an increase in content availability or acquisitions for titles by Netflix from the late 90s.

Summary:

The sharp increase in the number of movies from 1997–1999 suggests that Netflix either chose to acquire more titles from those years and that more movies from that time were available for licensing or streaming, compared to the early '90s.



Visualising movies by year with duration = 94 minutes

[IMAGE]

