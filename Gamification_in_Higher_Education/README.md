# PROJECT TITLE: Gamification in Higher Education and Analysis using Moodle LMS.

This project investigated:

a. contrary to research, gamification DOES NOT improve student engagement and IS NOT effective in higher education.

b. similar to research, gamification DOES improve student engagement and IS effective in higher education.
 
The project combines real feedback, platform screenshots, and structured data analysis using Excel and Power Query.
---

## 🔍 Background

This project was inspired by a lecture where I noticed that I and many of my coursemates were disengaged. The course was not our major and it seemed very abstract, so I wondered if it was possible to turn the lecture into a relatable game.

After experimenting with platforms like Kahoot!, Duolingo, Classcraft, etc., I built a custom gamified course on Moodle LMS hosted on an Azure VM. I split a usability engineering course into six modules: four gamified and two non-gamified. I created multiple-choice and short-answer questions using the 'Aiken' and 'GIFT' question bank format in Moodle, respectively. Participants engaged with the platform and submitted their feedback (both quantitative and qualitative) through a structured questionnaire, devlivered through a Microsoft form link.


## 🧰 Tools Used

Website Development

- Moodle installer package, version 4.3.3+ for Windows
  
- Azure VM (for Moodle LMS hosting), using a Windows x64 architecture, Standard E2s v3 (2 vcpus, 16 GiB memory).

Data Collecction

- Microsoft Forms 

Data Cleaning and Analysis
  
- Microsoft Excel: Pivot Tables, Power Query (for Unpivoting rows where users selected multiple answers, and Merging them back as a single column.), Charts and Dashboard.

---


## Project Summary


---

# Detailed Project


--- 

## 📸 Platform Preview

![image](https://github.com/user-attachments/assets/2f085bd3-df29-4801-bd05-2024a78a70a5)

IMAGE 1: Aiken Format



![image](https://github.com/user-attachments/assets/a69d5e14-e7dc-484d-93ba-14d22ccbbc00)

IMAGE 2: GIFT Format



![image](https://github.com/user-attachments/assets/8782c57e-c71d-4f1c-8ad3-ef62fb16b051)

IMAGE 3: All Courses Dashboard.


![image](https://github.com/user-attachments/assets/137b80d8-4bd7-475d-a3d5-a31f1f11d560)

IMAGE 4: Course Page


### Game Elements
The elements tested were Level Up XP, Stash Items (images), Custom avatars, Crossword, Cryptex,  Millionaire, Find the Words, Hangman, Dialog Cards, Multiple Choice Questions, Snakes and Ladders. The stash items were hidden in several courses randomly. When a participant found a certain stash item, they were able to unlock the game (gamified quiz).

[A]

![image](https://github.com/user-attachments/assets/d77c2143-af5b-4849-a89a-c4b20697903a)

![image](https://github.com/user-attachments/assets/7f6a6387-b972-46e8-9573-eb2c7e153b89)

IMAGE 5: Level Up XP


[B]

![image](https://github.com/user-attachments/assets/98e5adf2-e47d-4ece-9773-1e962322b1fd)

IMAGE 6: Stash Inventory


[C]

![image](https://github.com/user-attachments/assets/cb69b7fd-9180-4c0b-a48e-f85ad404dea4)

IMAGE 7: Crossword


[D]

![image](https://github.com/user-attachments/assets/fc9a9378-9576-41bc-9e61-7825de9e3386)

IMAGE 8: Dialog Card with hidden stash item.

 Note: At the time of this project, creating an avatar was not possible in moodle, so I provided a link to a website where they could create their avatar and download it for free. I also created one myself.

---

## 🧪 Dataset

- 📋 Data was obtained from 30 participants, who have completed basic education and were enrolled in or have completed university education. These participants were chosen through snowball sampling.
  
- 📂 Fields include:
  - Age group, gender, education level, field of study
  - Engagement level (1–5), satisfaction level (satisfactory, very satisfactory, unsatisfactory, very unsatisfactory).
  - Best gamification element, opinion on gamification
  - Challenges faced, suggestions, prior gamification knowledge

### Data Cleaning Process

Other fields not shown in the cleaned excel file such as id, start time, completion time were removed.

When the data was imported into Excel, the questions were retained as column names, so they needed to be renamed to more concise and suitable column names. 

The answers for the questions below were merged into a column called ‘opinion_on_gamification’
i.	Did the project meet your initial expectation(s) on gamification? Explain	
ii.	What is your overall opinion on the gamified courses? 
iii.	Were you more likely to revisit gamified course content than non-gamified content?
iv.	If yes, why?

To extract themes from qualitative answers, the main point was selected verbatim such as opinion_on_gamification’, reason_best_elements, etc. When multiple themes were conveyed, these themes were separated with ‘|’ or ';'. For Instance, where the participant said, ‘They (gamification elements) make it easier to understand taught concepts and make learning less cumbersome’, the theme was set as ‘effective’. Also, in areas where the participants responded ‘good’ without further explanation, the theme ‘good’ was chosen without making assumptions about what they considered good.

Finally, rows with multiple answers like 'opinion_on_gamification' were exploded / unpivoted using Power Query, to split each answer by the delimeter '|' or ';' and turn them into individual columns. Then the columns were combined into one long column, with individual answers for each row. This process was repeated for all multiple choice answer columns. The point of this process was to calculate the frequency of each theme.

---


## 📊 Key Insights from Analysis

### 👥 Demographic Insights

- 16 of the participants (more than half) were aged between 18 to 24, which signifies under-representation of those outside these age groups.
  
- Majority of participants came from IT/Computing backgrounds, so a lot of them had some technical knowledge to understand the project.

- Not surprisingly, the most engaged group was 18–24-year-olds, who were mostly bachelor's degree holders, followed by those aged 45–50.
  
- Both male and female participants showed comparable/nearly identical satisfaction and engagement levels.

### 🎮 Gamification Experience & Impact
- 96.7% of participants said gamification improved their understanding.
- 93.3% of participants reported being either satisfied or very satisfied.
- Average engagement level was 4.4 out of 5, indicating high engagement.
- The most liked gamification element was “Level Up XP”, indicating that participants liked the idea of competition and winning (being at the top of the leaderboard) while learning. Other frequently selected elements include stash items, custom avatars, crossword and find the words. Participants were allowed to select multiple elements.

### 🔁 Engagement vs Understanding & Prior Knowledge
- Even participants with no prior gamification knowledge reported high engagement (avg 4.3/5) and improved understanding, indicating that prior knowledge of gamification was not a significant contributor to participants' understamding of course content or engagement.

- Understanding improved across all engagement levels, but was most consistent among those scoring 4 or 5 on the engagement scale. This shows that gamification can increase engagement and is likely to be effective in higher education.

### 🧠 Opinions on Gamification

- Top 5 opinions recorded were: Effective, Engaging, Fun, Interactive, and Rewarding.

- Users chose elements like Level Up XP, stash items, Crossword and Find the words for reasons such as: Interesting, Fun, Good, Engaging, Motivating, etc.

- Many participants appreciated the aspect of play, interactivity, progression, and feedback mechanisms built into the gamified platform.
  
- These preferences reflect a strong inclination toward game mechanics that reward progress, exploration and critical thinking.

These insights display the high levels of engagement, satisfaction and improved understanding, which signifies a high potential for effectiveness in higher education.

---

## Excel Analysis Dashboard

---

Statistical Analysis

### ⚠️ Challenges Reported
- The vast majority reported no challenges.
- A small number (3 participants) mentioned Navigation as a usability issue.

### 💬 Suggestions from Participants 
- Key themes in suggestions:
  - Easier Navigation
  - Improved UI
  - Optional participation in leaderboard
- These responses suggest minor usability adjustments rather than core concept issues.

--- 
### Observation

During the project, participants' activities, such as their stash inventory and position on the leaderboard, were monitored. Moodle’s activity completion was also used to achieve this. During the study, some participants inquired about the identities of the participants who scored higher than them in the leaderboards because they were curious about their performance. As this information could not be revealed due to data privacy (and my amusement), they inquired about activities that could put them at the top of the leaderboard even when there were no rewards involved. This means that these participants were intrinsically motivated. 

Their activities also revealed that while the participants were given a form containing instructions about the project for review, and the instructions were also placed on each course’s main page on the website, many participants ignored them because they were not interested in ‘reading’. Hence, verbal communication of the requirements of the project and the use of the elements was important. 

I realised that people could have been very engaged because it was new. Implementation in education could lead to overuse to the point that it becomes less effective and engaging. The results made me realise that while people engaged with the games, they still did not read the lecture materials. Many of them preferred to quickly look up the answers online. However, this is also a form of learning, as they might be able to remember the questions due to their reason for looking up the questions online. That is, playing a game. This is a form of tricking the brain to learn. 
For gamification to be effective, I feel it is necessary to use it periodically as a tool to increase engagement levels. Introducing new gamified activities once or twice a week can be more beneficial than daily implementation.

