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

PROJECT AIM: The aim of this project is to conduct exploratory data analysis, based on the 1990s movies data.

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

'date_added' column was standardised into the format 'YYYY-MM-01'. The dataset also has unique identifiers for each record and no redundancy.

Summary:

Cleaned and filtered the Netflix movie data, standardising date formats and verifying data integrity (e.g., duplicates, missing values). Relevant records (1990s movies data) were also extracted into a dataframe for further analysis.

2. Calculating most frequent movie duration
   




