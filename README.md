# System Identification and Multiclass Classification in MATLAB

Course project developed for **Learning and Estimation of Dynamical Systems**  
MSc in Automation Engineering — University of Bologna

**Course instructor:** Prof. Roberto Diversi

The project contains two exercises implemented in MATLAB:

- **AR system identification and validation**
- **Multiclass classification using logistic regression**

## Overview

### Exercise 1 — System Identification

The first part identifies an unknown autoregressive process from measured data.

The workflow includes:

- selection of an **AR** model structure from the available measurements;
- parameter estimation using a recursive least-squares algorithm;
- model-order comparison using **FPE**, **AIC**, and **MDL**;
- residual computation and model validation;
- residual whiteness analysis using **Chi-square** and **Anderson** tests;
- covariance analysis of the estimated parameters.

For the original dataset, the model-order criteria returned:

```text
FPE -> order 6
AIC -> order 6
MDL -> order 4
```

The final model uses the order selected by MDL. The residual whiteness tests reported an accepted result for the identified model.

### Exercise 2 — Multiclass Classification

The second part addresses a four-class classification problem.

The implementation uses:

- one-vs-all decomposition of the multiclass problem;
- logistic sigmoid functions;
- linear decision boundaries;
- Newton-Raphson optimization for the classifier parameters;
- training-set classification error and graphical validation.

The resulting decision boundaries separate the four classes with low training errors in the original experiment.

## MATLAB Functions

The `Functions/` directory contains the functions implemented for the project, including:

- `RLSII_AR.m` — recursive parameter estimation for the AR model;
- `FPE_criterion.m`, `AIC_criterion.m`, `MDL_criterion.m` — model-order criteria;
- `Residual.m` — residual computation;
- `Chi_square_whiteness.m`, `Anderson_whiteness.m` — residual whiteness tests;
- `Covariance_matrix.m` — covariance analysis;
- `ClassCostFunc.m` — logistic classification cost function;
- `Grad1ClassCost_func.m`, `Grad2ClassCost_func.m` — first- and second-order derivatives;
- `Onevsall.m` — one-vs-all label generation;
- `Sigmoid.m`, `Sigmoid_Multiclass.m` — binary and multiclass sigmoid functions.

## Project Structure

```text
system-identification-and-classification-matlab/
│
├── README.md
├── Patrone_Sharon.mlx
│
├── Functions/
│   ├── AIC_criterion.m
│   ├── Anderson_whiteness.m
│   ├── Chi_square_whiteness.m
│   ├── ClassCostFunc.m
│   ├── Covariance_matrix.m
│   ├── FPE_criterion.m
│   ├── Grad1ClassCost_func.m
│   ├── Grad2ClassCost_func.m
│   ├── Loss_function.m
│   ├── MDL_criterion.m
│   ├── myHank.m
│   ├── Onevsall.m
│   ├── Residual.m
│   ├── RLSII_AR.m
│   ├── Sigmoid.m
│   └── Sigmoid_Multiclass.m
│
└── report/
    └── Patrone_Sharon.pdf
```

## Report

The complete Live Script, including the original figures and outputs, is available in:

[**Patrone_Sharon.pdf**](report/Patrone_Sharon.pdf)

The MATLAB Live Script is also included as `Patrone_Sharon.mlx`.

## Requirements

The project was developed in MATLAB and uses functions from:

- MATLAB;
- Statistics and Machine Learning Toolbox;
- Econometrics Toolbox.

## Dataset Generation

The original coursework used two course-provided functions, `IdentifyThis` and `ClassifyThose`, to generate a personalized dataset from the student's identifying information.

These course-provided functions are **not included in this repository**. The original matriculation number has also been replaced with `YOUR_ID` for privacy.

As a result, the repository preserves the original code, figures and outputs, but the complete experiment cannot currently be regenerated from scratch without the original course utilities.

## Notes

This repository contains the student-developed solution and supporting MATLAB functions only. Course-provided data-generation utilities and assignment files are intentionally excluded.
