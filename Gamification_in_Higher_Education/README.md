# 🎮 Gamified Learning Feedback Dashboard

This project investigates whether gamification can improve learning engagement and understanding among university students. It combines real feedback, platform screenshots, and structured data analysis using Excel and Power Query.

---

## 🔍 Background

This project was inspired by a lecture where I — and many of my classmates — were disengaged. I started wondering: *Could learning feel more like a game?*

After experimenting with platforms like Kahoot!, Duolingo, and FoldIt, I built a custom gamified course on Moodle LMS hosted on an Azure VM. I split a usability engineering course into six modules: four gamified and two non-gamified. Participants engaged with the platform and submitted their feedback through a structured questionnaire.

---

## 🧰 Tools Used

- Excel (Data Cleaning, Analysis, Dashboards)
- Power Query (Unpivoting, Merging, Theme Extraction)
- Pivot Tables & Charts
- Azure VM (for Moodle LMS hosting)
- Microsoft Forms / Word for survey responses
- Word Cloud (via online tool or add-in)

---

## 🧪 Dataset

- 📋 30+ participant responses
- 📂 Fields include:
  - Age group, gender, education level, field of study
  - Engagement level (1–5), satisfaction level
  - Best gamification element, opinion on gamification
  - Challenges faced, suggestions, prior gamification knowledge

---

## 📊 Key Insights

👉 [View full insight breakdown here](./README_Insights.md)

- 96.7% said gamification improved understanding
- 93.3% were satisfied with the experience
- Level Up XP was the most appreciated game element
- Navigation was the most common usability issue reported (by 3 users)
- Even users with no prior gamification knowledge showed strong engagement

---

## 📸 Platform Preview

> *Gamified learning modules hosted on Moodle LMS.*

![Gamified Site Screenshot](site_screenshots/moodle_homepage.png)

- Features: Level Up XP, avatars, interactive quizzes
- Custom learning paths for both gamified and non-gamified participants

---

## 📈 Dashboard and Charts

> *All visuals created in Excel using Power Query + PivotTables.*

### KPI Summary

![KPI Dashboard](charts/kpi_summary.png)

### Engagement vs Satisfaction

![Engagement Chart](charts/chart_satisfaction_vs_engagement.png)

### Opinions on Gamification

![Opinion Chart](charts/chart_opinion_keywords.png)

### Suggestions

![Suggestions Chart](charts/chart_suggestion_themes.png)

---

## 🔄 Comparative Insights

- Participants aged 18–24 had the highest engagement levels
- Both genders showed nearly identical satisfaction scores
- Users with no prior gamification experience still reported high understanding
- “Fun” and “Interactive” were the most frequent opinion tags
