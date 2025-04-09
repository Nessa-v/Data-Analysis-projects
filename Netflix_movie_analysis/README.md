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

4. Genre Analysis

# editing in progress

ANALYSIS

1. Data Preprocessing:

a. netflix_df.info() gives information of the dataset which was read into a python dataframe. It shows that the dataset contains 4,812 rows and 11 columns. Every column is marked as non-null. 

b. The columns 'release_year' and 'duration' are of datatype 'int' which is good for numerical analysis. The rest are of type object (string/text) which is a standard for descriptive fields.

c. All columns report 0 missing values, which is typically unusual, but this signifies that it was completely filled in by DataCamp.

d. 'date_added' column was standardised into the format 'YYYY-MM-DD'. The dataset also has unique identifiers for each record and no redundancy.

Summary:

Cleaned and filtered the Netflix movie data, standardising date formats and verifying data integrity (e.g., duplicates, missing values). Relevant records (1990s movies data) were also extracted into a dataframe for further analysis.

2. Calculating most frequent movie duration
   
The dataframe was filtered to keep only data where 'type' = movie and release year is between 1990 and 2000.

To calculate the most frequent movie duration, the .idmax() and .id() functions were used to determine the most fequent movie duration (94 minutes) and how many times it occurred (7). 

![download](https://github.com/user-attachments/assets/6a0189c0-5fda-4aca-a92b-ca4f1837e1a7)

![download](https://github.com/user-attachments/assets/da02767b-de98-4f0c-8b69-965559a95454)

![download](https://github.com/user-attachments/assets/985974a1-2f11-4983-b1ce-2fbe51fd715c)


Key Insights:

a. The most frequent movie duration among 1990s Netflix movies is 94 minutes. It means there is no extreme concentration in any runtime, but 94 mins occurs most often.

b. The sudden peak at 90 minutes (90 - 120 mins) could mean a possible industry standard or preference at the time.

c. Most movies fall between 90 to 120 minutes which balances storytelling depth without being too long for audiences.

d. There are still a good number of movies above 150 mins, showing that long movies were not rare either.

Summary:

The most common duration among Netflix's 1990s movies is 94 minutes, with 7 movies sharing that runtime. The frequency is modest, and the chart suggests a fairly normal distribution. Most movies fall between 90 and 120 minutes, which also suggests standard industry runtimes.

3. Analysing yearly trends

The dataset was grouped by release_year and  the number of movie entries for each year in the 1990s was counted.

Key Insights:

a. From 1990 to 1996, movie counts per year hovered around 14–16 movies per year.

b. Starting in 1997, there is a noticeable increase, reaching 26 movies per year consistently through 1999.

c. This suggests an increase in content availability or acquisitions for titles by Netflix from the late 90s.

Summary:

The sharp increase in the number of movies from 1997–1999 suggests that Netflix either chose to acquire more titles from those years and that more movies from that time were available for licensing or streaming, compared to the early '90s.

Visualising release year with duration = 94 minutes:

![download](https://github.com/user-attachments/assets/6a105c1d-1bcf-46a5-823d-e7219c825fec)

Key Insights:

a. 1991 and 1996 each had 2 movies with a duration of 94 minutes, while 1990, 1997, and 1999 each had 1 movie that lasted exactly 94 minutes. 

b. There are no movies with 94-minute duration listed for other years like 1992–1995 or 1998 in the Netflix dataset.

Summary: 

Compared to the number of movies released for each year in the 1990s, movies lasting 94 minutes were a very small proportion, which indicates that it was not a singificant movie duration in the 1990s.

Calculating Movie Duration Statistics:

The plot tracks:

a. Mean Duration (blue line): average movie length per year.

b. Median Duration (orange line): midpoint duration, less sensitive to outliers.

c. Standard Deviation (green line): how varied movie durations were for each year.


                    mean,  median,    std
                    
release_year                               

1990,          117.428571,   109.0,  41.084742

1991,          93.500000,    93.5,  33.831597

1992,          104.000000,   102.0,  27.892651

1993,          120.000000,   115.0,  35.432565

1994,          128.428571,   124.0,  40.349844

1995,          116.437500,   110.5,  29.289290

1996,          120.133333,   114.0,  27.252435

1997,          116.961538,   114.5,  24.964744

1998,          109.884615,   103.5,  35.631814

1999,          121.884615,   111.5,  33.287027

![download](https://github.com/user-attachments/assets/a91b795f-a20c-4abe-a582-93da42b8b380)

Key Insights:

a. The year with the highest movie duration was 1994, with a mean of approximately 128.4 minutes and median of 124 minutes.

b. The year with the lowest duration was 1991, with a mean and median of approximately 93.5 minutes. 

c. Standard deviation drops from approximately 41 minutes to approximately 25 minutes in 1997. This indicates that runtimes became more standardised as the decade progressed.

Summary:

Analysed Netflix's 1990s movie durations, revealing a peak in 1994 with average runtimes over 128 minutes. The data showed a trend toward more consistent durations over the decade, with standard deviation shrinking by 40%. This points to increasing content duration standardidation.

Calculating Correlation Between Release Year and Duration:

Since 'release_year' and 'duration' are already of datatype int, Pearson's correlation between these two columns is calculated.

Key Insights

The correlation coefficient between release_year and duration is 0.096, which signifies a positive relationship (indicating that as years increase, durations slightly increase). However, it is very weak (since it's close to 0).

Summary

There is a very weak positive correlation between the year a movie was released and its duration in the 1990s. This suggests that movie durations did not significantly change as the years progressed. It supports the earlier theory that movie durations became more standardised as the years increased, so there weren't extremely long or short movies towards the end of the decade.


3. Genre Analysis

The 'genre' column was split by commas (,), incase there were multiple genres for one movie. Each genres were then put in seperate rows using the .explode() function. The .strip() function removes unnecessary spaces before and after the texts. The 'genre_counts' variable contains the number of times each genre appears. 

![download](https://github.com/user-attachments/assets/5059d225-8716-40e3-9872-e073ce2ef984)

Key Insights:

a. Top Genres: Action (48 movies) was the most dominant genre, followed closely by Dramas (44) and Comedies (40). 

b. Less Represented Genres: Categories like Documentaries and Cult Movies only had 2 titles each, suggesting limited content availability or limited acquisition for these genres.

c. Horror Movies and Thrillers also had fewer entries, indicating that such themes were less emphasized in 1990s Netflix content.

d. Children and Classic Movies: With 15 movies each, these genres held a moderate presence, showing Netflix's attempt to balance entertainment for various age groups.

e. Short Action Movies (< 90 mins): Only 7 short Action movies were under 90 minutes long. This suggests that most Action films in the 1990s tended to be longer, possibly to accommodate complex plots or elaborate scenes.

Visualising Duration by Genre: A box plot was used to compare movie durations across genres in the 1990s. 

Key insights:

a. Action

Median duration: Around 110 mins.

Range: Wide, spanning from approximately 70 to nearly 190 mins.

Action movies had some of the longest durations and greatest variation. This genre includes both shorter action thrillers and long blockbusters.

b. Children

Median duration: Close to 90 mins.

Range: Narrow, mostly between 75 to 110 mins.

Children's movies are consistently shorter, likely due to attention span considerations. Minimal outliers suggest uniformity.

c. Classic Movies
 
Median duration: approximately 120 mins.

Range: Wide, extending from about 90 mins to just under 200 mins.

These films tend to be long and varied, potentially because they include epic or historically significant movies that aren't constrained by modern runtime trends.

d. Comedies

Median duration: About 105 mins.

Outliers: A few very short films, including one near 30 mins.

While most comedies follow a moderate length, there’s greater variability.

e. Cult Movies
 
Median duration: approximately 100 mins.

Range: Very tight.

Cult films in this dataset show very little variation, possibly reflecting niche formats.

f. Documentaries
   
Median duration: approximately 75 mins.

Range: Narrow, between 60 and 90 mins.

Documentaries tend to be short and concise, likely aiming for clarity and efficiency in storytelling.

g. Dramas

Median duration: High, around 130 mins.

Range: Broad, up to ~190 mins.

Dramas are typically longer, likely due to character development and complex story arcs. 

h. Horror Movies
   
Median duration: approximately 105 mins.

Range: Moderate.

Slightly shorter than dramas and classics, horror movies stay within a standard range but don’t show as much variation.

i. Stand-Up

Median duration: Very short, around 60 mins.

Range: Very tight, 30–70 mins.

These are consistent and short, fitting the nature of recorded stand-up performances.

10. Thrillers
    
Median duration: approximately 110 mins.

Range: Moderate.

Standard in length with some variety, thrillers sit between action and drama in both intensity and duration.

Summary:

This analysis reveals how genre influences movie length and showcases format trends from the 1990s. Action, Dramas and Classic Movies had the longest average durations and the widest variation, indicating rich storytelling and diverse formats. Children and Stand-Up genres had the shortest and most consistent durations, typically under 90 minutes, showing a focus on brevity and attention span. Documentaries and Cult Movies maintained a tight duration range, often concise and focused. Outliers across genres like children movies and comedy, highlight the presence of unusually short or long movies.






