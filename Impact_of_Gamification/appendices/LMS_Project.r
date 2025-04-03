## NAME OF PROGRAMMER: VANESSA NWANKWO
## TITLE: DATA ANALYSIS IN R
## PURPOSE OF FILE: FINAL PROJECT_GAMIFICATION IN HIGHER EDUCATION VIA MOODLE
## MONTH CREATED: MARCH 2024

# INSTALL AND LOAD NECESSARY PACKAGES LIKE readxl, dplyr, tidyr, ggplot2

# Load the readxl package
library(readxl)

# Specify the path to the Excel file
file_path <- "C:/Users/HP/Downloads/Original_data.xlsx"

# Read the 'data' sheet from the Excel file
data_df <- read_excel(file_path, sheet = "data")

# View the first few rows of the dataframe
head(data_df)

########################

# splitting role column
roles_split <- strsplit(data_df$role, ";")
max_length <- max(sapply(roles_split, length))
new_role_cols <- t(sapply(roles_split, `[`, 1:max_length))

# Naming the new columns and adding them to the dataframe
for (i in 1:max_length) {
  col_name <- paste("role_option", i, sep = "_")
  data_df[col_name] <- new_role_cols[, i]
}
##########################

library(tidyr)  # Load the tidyr package for data manipulation
library(dplyr)

# Converting 'best_elements' column
data_df <- data_df %>%
  mutate(
    Custom_Avatars = ifelse(grepl("Custom Avatars", best_elements), 1, 0),
    Level_Up_XP = ifelse(grepl("Level Up XP", best_elements), 1, 0),
    Hangman = ifelse(grepl("Hangman", best_elements), 1, 0),
    Crossword = ifelse(grepl("Crossword", best_elements), 1, 0),
    Cryptex = ifelse(grepl("Cryptex", best_elements), 1, 0),
    Millionaire = ifelse(grepl("Millionaire", best_elements), 1, 0),
    Stash_items = ifelse(grepl("Stash items", best_elements), 1, 0),
    Snakes_and_Ladders = ifelse(grepl("Snakes and Ladders", best_elements), 1, 0),
    Find_the_words = ifelse(grepl("Find the words", best_elements), 1, 0),
    Dialog_Cards = ifelse(grepl("Dialog Cards", best_elements), 1, 0),
    Multiple_Choice_questions = ifelse(grepl("Multiple Choice questions", best_elements), 1, 0)
  )
#####################
# to convert to factor datatype
data_df <- data_df %>%
  mutate(
    age_group = factor(age_group),
    gender = factor(gender),
    education_level_attained = factor(education_level_attained),
    prior_knowledge = factor(prior_knowledge),
    experience_lms = factor(experience_lms),
    improves_understanding = factor(improves_understanding),
    created_avatars = factor(created_avatars),
    satisfaction_elements_used = factor(satisfaction_elements_used, levels = c("Very Unsatisfactory", "Unsatisfactory", "Neutral", "Satisfactory", "Very Satisfactory"))
  )


data_df <- data_df %>%
  mutate(
    experience_lvl_lms = factor(experience_lvl_lms, 
                                levels = 1:5, 
                                labels = c("No understanding", "Limited understanding", "Moderate understanding", "Good understanding", "Comprehensive understanding"),
                                ordered = TRUE),
    bp_rate_learning_with_games = factor(bp_rate_learning_with_games, 
                                         levels = 1:5, 
                                         labels = c("Not effective at all", "Slightly ineffective", "Neutral", "Moderately effective", "Highly effective"),
                                         ordered = TRUE),
    engagement_lvl = factor(engagement_lvl, 
                            levels = 1:5, 
                            labels = c("Less engaging than non-gamified", "Slightly more engaging", "Equally engaging", "More engaging", "Much more engaging than non-gamified"),
                            ordered = TRUE),
    rate_level_up_xp = factor(rate_level_up_xp, 
                              levels = 1:5, 
                              labels = c("Not at all motivating", "Slightly motivating", "Neutral", "Motivating", "Highly motivating"),
                              ordered = TRUE)
  )

str(data_df)

###########################################################
library(ggplot2)

# Plotting the graph of age vs gender

ggplot(data_df, aes(x = age_group, fill = gender)) + 
  geom_bar(position = "dodge") + # Use position = "stack" for a stacked bar chart
  labs(title = "Comparison of Age Group and Gender",
       x = "Age Group",
       y = "Count",
       fill = "Gender") +
  scale_fill_brewer(palette = "Pastel1") + # Optional: to use a color palette for the fill
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# graph of education level attained

ggplot(data_df, aes(x = education_level_attained)) + 
  geom_bar(fill = "steelblue", color = "black") +
  labs(title = "Distribution of Participants by Education Level",
       x = "Education Level Attained",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# fields of study of participants
ggplot(data_df, aes(x = field)) + 
  geom_bar(fill = "cornflowerblue", color = "black") +
  labs(title = "Distribution of Participants by Field",
       x = "Field",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5))

# 'prior_knowledge' is the column with Yes/No responses,
# and 'bp_rate_learning_with_games' is the column with the perspective rating before participation.
# Plotting a graph to compare both

ggplot(data_df, aes(x = prior_knowledge, fill = as.factor(bp_rate_learning_with_games))) + 
  geom_bar(position = "dodge") +
  scale_fill_brewer(palette = "Blues", name = "Perspective Rating") +
  labs(title = "Prior Knowledge of Gamification vs Perspective of Learning with Games",
       x = "Prior Knowledge of Gamification",
       y = "Count") +
  theme_minimal() +
  theme(legend.position = "bottom")


# Plotting a graph of Perceived Effectiveness vs. Improvement in Understanding
ggplot(data_df, aes(x = as.factor(bp_rate_learning_with_games), fill = improves_understanding)) + 
  geom_bar(position = "dodge") +
  scale_fill_brewer(palette = "Set1", name = "Improves Understanding") +
  labs(title = "Perceived Effectiveness vs. Improvement in Understanding",
       x = "Rating of Effectiveness Before Participation",
       y = "Count") +
  theme_minimal() +
  theme(legend.position = "bottom")


# Plotting Engagement Levels vs. Improved Understanding
ggplot(data_df, aes(x = engagement_lvl, fill = improves_understanding)) +
  geom_bar(position = "dodge") +
  labs(title = "Engagement Levels vs. Improved Understanding",
       x = "Engagement Levels",
       y = "Count") +
  scale_fill_brewer(palette = "Pastel1", name = "Improved Understanding") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability

###############################

# Since 'data_df' contains binary (0/1) columns for each gamification element
# First, sum up the occurrences of each element
element_sums <- data_df %>%
  summarise(
    Custom_Avatars = sum(Custom_Avatars, na.rm = TRUE),
    Level_Up_XP = sum(Level_Up_XP, na.rm = TRUE),
    Hangman = sum(Hangman, na.rm = TRUE),
    Crossword = sum(Crossword, na.rm = TRUE),
    Cryptex = sum(Cryptex, na.rm = TRUE),
    Millionaire = sum(Millionaire, na.rm = TRUE),
    Stash_items = sum(Stash_items, na.rm = TRUE),
    Snakes_and_Ladders = sum(Snakes_and_Ladders, na.rm = TRUE),
    Find_the_words = sum(Find_the_words, na.rm = TRUE),
    Dialog_Cards = sum(Dialog_Cards, na.rm = TRUE),
    Multiple_Choice_questions = sum(Multiple_Choice_questions, na.rm = TRUE)
  ) %>%
  gather(key = "Element", value = "Count")

# Now, plot the sums
ggplot(element_sums, aes(x = reorder(Element, Count), y = Count)) +
  geom_bar(stat = "identity", fill = "turquoise3") +
  coord_flip() + # Flip the coordinates to make it a horizontal bar chart
  labs(title = "Most Chosen Gamification Elements as Best",
       x = "Gamification Element",
       y = "Count of Selections") +
  theme_minimal()

##############################################

# First, gather the gamification elements into key-value pairs for plotting
data_long <- data_df %>%
  gather(key = "Element", value = "Selected", Custom_Avatars:Multiple_Choice_questions) %>%
  filter(Selected == 1)  # Filter to include only selected elements

# Plotting
ggplot(data_long, aes(x = age_group, fill = gender)) + 
  geom_bar(position = "dodge") +
  facet_wrap(~ Element, scales = "free_y") + # Facets for each element, with independent y scales
  labs(title = "Distribution of Best Elements by Age Group and Gender",
       x = "Age Group",
       y = "Count") +
  scale_fill_brewer(palette = "Set2") + # Optional: use a color palette for gender
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

############################
# install and load the packages
library(tidyverse)
library(wordcloud)
library(tm)

# Plotting themes
# Opinion on gamification
data_df %>%
  # Separate the themes into individual rows
  separate_rows(opinion_on_gamification, sep = "\\|") %>%
  # Trim whitespace that might result from splitting
  mutate(opinion_on_gamification = str_trim(opinion_on_gamification)) %>%
  # Count the occurrences of each theme
  count(opinion_on_gamification) %>%
  # Plot the results
  ggplot(aes(x = reorder(opinion_on_gamification, n), y = n, fill = opinion_on_gamification)) +
  geom_bar(stat = "identity") +
  coord_flip() + # Flip the coordinates for easier reading of the theme names
  labs(title = "Frequency of Themes in Opinions on Gamification",
       x = "Theme",
       y = "Count") +
  theme_minimal() +
  theme(legend.position = "none") # Remove the legend since the information is already on the x-axis


# Plotting reason for selected elements

# Separate the themes into individual rows
data_separated <- data_df %>%
  separate_rows(reason_best_elements, sep = "\\s*\\|\\s*") %>%
  filter(reason_best_elements != "")  # Remove any empty strings resulting from separation

# Count the occurrences of each theme
theme_counts <- data_separated %>%
  count(reason_best_elements) %>%
  arrange(desc(n))

# Plotting the theme counts
ggplot(theme_counts, aes(x = reorder(reason_best_elements, n), y = n)) +
  geom_bar(stat = "identity", fill = "coral") +
  coord_flip() +  # Makes it easier to read the theme names
  labs(title = "Frequency of Themes in Reasons for Best Elements",
       x = "Theme",
       y = "Count") +
  theme_minimal()

# Plotting satisfaction levels

# Ensure 'satisfaction_elements_used' is an ordered factor
data_df$satisfaction_elements_used <- factor(data_df$satisfaction_elements_used, 
                                             levels = c("Very Unsatisfactory", "Unsatisfactory", "Neutral", "Satisfactory", "Very Satisfactory"),
                                             ordered = TRUE)

ggplot(data_df, aes(x = satisfaction_elements_used)) +
  geom_bar(fill = "dodgerblue", color = "black") +
  labs(title = "Satisfaction with Elements Used", 
       x = "Satisfaction Level",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability

# Plotting challenges vs. experience level
ggplot(data_df, aes(x = experience_lvl_lms, fill = challenges)) +
  geom_bar(position = "stack") +  # Use 'position = "dodge"' for a grouped bar chart
  labs(title = "Challenges vs. Experience Level with LMS",
       x = "Experience Level with LMS",
       y = "Count of Challenges") +
  scale_fill_brewer(palette = "Set3", name = "Challenges") +  # Optional: Use a color palette
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability

################################

# Plotting challenges vs. experience level with LMS
ggplot(data_df, aes(x = experience_lvl_lms, fill = challenges)) +
  geom_bar(position = "stack") +  # Use 'position = "dodge"' for a grouped bar chart
  labs(title = "Challenges vs. Experience Level with LMS",
       x = "Experience Level with LMS",
       y = "Count of Challenges") +
  scale_fill_brewer(palette = "Set3", name = "Challenges") +  # Optional: Use a color palette
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability


# Plotting 'engagement_lvl' and 'age_group'

# Ensure both columns are treated as factors
#data_df$engagement_lvl <- factor(data_df$engagement_lvl)
#data_df$age_group <- factor(data_df$age_group)

ggplot(data_df, aes(x = age_group, fill = engagement_lvl)) +
  geom_bar(position = "dodge") +
  scale_fill_brewer(palette = "Spectral", name = "Engagement Level") +
  labs(title = "Engagement Levels by Age Group",
       x = "Age Group",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## Plotting Engagement Levels vs. Improved Understanding
ggplot(data_df, aes(x = engagement_lvl, fill = improves_understanding)) +
  geom_bar(position = "dodge") +
  labs(title = "Engagement Levels vs. Improved Understanding",
       x = "Engagement Levels",
       y = "Count") +
  scale_fill_brewer(palette = "Pastel1", name = "Improved Understanding") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability


######################
# Ensure 'age_group' and 'education_level_attained' are treated as factors
#data_df$age_group <- factor(data_df$age_group)
#data_df$education_level_attained <- factor(data_df$education_level_attained)

# Plotting education level attained vs. age group
ggplot(data_df, aes(x = age_group, fill = education_level_attained)) +
  geom_bar(position = "dodge") +  # 'dodge' positions bars next to each other
  labs(title = "Education Level by Age Group",
       x = "Age Group",
       y = "Count") +
  scale_fill_brewer(palette = "Pastel1", name = "Education Level") +  # Optional: Use a color palette
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability
