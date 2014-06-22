---
title       : Body Mass Index (BMI) Calculator
subtitle    : Slidify Presentation about - A Shiny App
author      : 
job         : Coursera Student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## What is Body Mass Index (BMI)?

BMI stands for Body Mass Index. In recent times it has become important to monitor one's BMI, with alarming increase in obesity (and consequent risk of cardio-vascular disease, diabete, hyper-tension) across all classes and sections of every society in the world. The BMI is calculated from one's height and weight. It is a fairly reliable indicator of body fat for most adults, with athletes and the elderly being two exceptions. BMI is an inexpensive alternative to direct measurements of body fat.

The Centers for Disease Control and Prevention uses BMI to define terms like overweight and obese: 

    Underweight: BMI below 18.5
    Normal weight: 18.5 to 24.9
    Overweight: 25.0 to 29.9
    Obese: 30.0 and above.

--- .class #id 

## About the App

The Body Mass Index (BMI) of a person can be calculated if the person's height and weight are given. However both height and weight can be given either in Metric System or English System, as both the systems are still popular. As the user may wish to use either unit system, the App provides a choice to the user to choose either system.

Normally, this choice is presented to the user through a tabbed interface. However, in this App, the choice is presented through a common and seamless interface by dynamically changing the Input Elements for height and weight, based on the user's choice of unit system.

This interface gives the App a sleek, seamless, fast, less confusing and smooth interface. This makes for better look and user experience, compared to tabbed calculators.

--- .class #id 

## The Formula For BMI Calculation

The mathematical formula for calculating the BMI involves height and weight of a person.

The height and weight have to be in the same unit system: either 'Metric' i.e height in metres and weight in kilograms or alternatively 'English' i.e height in inches and weight in pounds(lbs).

The Metric system formula is:
$$WeightInKgs / HeightInMts ^ 2$$

The English system formula is:
$$(WeightInLbs / HeightInInches ^ 2) * 703$$

--- .class #id 

## Example BMI Calculation

For example, if the height of a person is 5 feet 10 inches and weight is 78  kgs., the height in Metric System is 1.778 mts and wight in English system is 171.961 lbs.

So BMI calculation in Metric System is:

```r
ht = 1.778; wt = 78; bmi = wt / (ht ^ 2); round(bmi,1)
```

```
## [1] 24.7
```

BMI calculation in English System is:

```r
ht = 5 * 12 + 10; wt = 171.961; bmi = (wt / (ht ^ 2)) * 703; round(bmi,1)
```

```
## [1] 24.7
```
