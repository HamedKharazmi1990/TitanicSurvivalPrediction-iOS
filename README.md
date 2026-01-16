# 🚢 Titanic Survival Prediction App (Create ML)

**Titanic Survival Prediction App** is an iOS application that predicts whether a passenger would survive the Titanic disaster based on input features.  
The app uses a **machine learning model built with Create ML**, trained on the classic **Titanic survival dataset**.

## Demo
<p align="center">
  <img src="./assets/TitanicPrediction.gif" width="420" alt="TitanicPrediction Demo" />
</p>

---

This project demonstrates the complete workflow of:
- Training a model with **Create ML**
- Integrating a `.mlmodel` into an iOS app
- Making real-time predictions from user input

---

## ✨ Features

- 🤖 Machine learning–based survival prediction
- 📊 Trained using the Titanic survival dataset
- 📱 Simple and intuitive user interface
- ⚡ Fast on-device prediction
- 🧠 Core ML integration
- 🧱 Clean and easy-to-understand structure

---

## 🧰 Tech Stack

| Category | Technology |
|--------|------------|
| **Language** | Swift |
| **UI Framework** | SwiftUI |
| **Machine Learning** | Create ML |
| **ML Runtime** | Core ML |
| **Dataset** | Titanic Survival Dataset |
| **Platform** | iOS |
| **IDE** | Xcode |
| **Minimum iOS** | iOS 17+ |

---

## 📌 Project Overview

This application predicts **Titanic passenger survival** based on features such as:
- Passenger class
- Age
- Gender
- Fare
- Family information

The prediction is performed **entirely on-device**, ensuring fast response times and privacy.

---

## 🤖 Machine Learning Model

- Built using **Create ML**
- Trained on labeled Titanic passenger data
- Exported as a `.mlmodel` file
- Integrated into the app via **Core ML**

The model outputs a **binary prediction**:
- `Survived`
- `Did Not Survive`


## 📊 Dataset

The model is trained using the well-known **Titanic dataset**, which contains historical data of passengers aboard the RMS Titanic.

Typical features include:
- Passenger class (`Pclass`)
- Sex
- Age
- Fare
- Number of siblings/spouses
- Number of parents/children

> The dataset is commonly used for introductory machine learning and classification tasks.

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone "https://github.com/HamedKharazmi1990/TitanicSurvivalPrediction-iOS"
cd Titanic
```

### 2️⃣ Open the Project

    1. Open Titanic.xcodeproj in Xcode
    2. Select an iPhone simulator
    4. Press Run (⌘R)

### 🔄 Prediction Flow
    User Input
     ↓
    Feature Preprocessing
     ↓
    Core ML Model
     ↓
    Survival Prediction
     ↓
    Result Displayed in UI

All predictions are executed locally on the device using Core ML.


### ⚠️ Limitations

    - Prediction accuracy depends on training data quality
    - Simplified feature set
    - Educational / demonstration purpose only
    - Not intended for real-world risk assessment



### 👨‍💻 Maintainer

    Hamed Kharazmi
    📧 hamed.kharazmi@gmail.com


    
