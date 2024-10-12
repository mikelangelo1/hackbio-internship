# Reproducing Cancer Drug Sensitivity Prediction using Machine Learning

## Overview

This report presents our team's efforts to reproduce the results of the paper "Machine Learning Prediction of Cancer Cell Sensitivity to Drugs Based on Genomic and Chemical Properties" using a machine learning pipeline. We focused on predicting cancer cell line sensitivity to drugs using molecular descriptors and drug response data.

## Background

Machine learning (ML) has emerged as a powerful tool in cancer drug discovery, offering the potential to accelerate the identification of effective treatments. By leveraging large datasets of genomic and chemical properties, ML models can predict drug sensitivity across diverse cancer cell lines. This approach enables researchers to prioritize promising drug candidates for further investigation, potentially reducing the time and cost associated with traditional drug discovery methods. The integration of ML in this field represents a significant step towards personalized cancer therapies, as it allows for the consideration of individual genetic profiles in treatment selection.

## Methodology

### Dataset Preparation

1. We loaded the dataset from an Excel file containing information on cell lines, drugs, and their efficacy.
2. We filtered the dataset to include only cell lines that appeared more than 400 times, as no cell line appeared more than 500 times as initially specified.
3. We selected relevant columns: CELL_LINE_NAME, TCGA_DESC, DRUG_NAME, and LN_IC50.
4. Using the PubChemPy library, we generated SMILES (Simplified Molecular Input Line Entry System) representations for each drug based on its name.
5. Rows with missing SMILES data were removed to ensure data quality.

### Molecular Descriptor Generation

We used RDKit to calculate Lipinski descriptors for each drug based on its SMILES representation. The descriptors included:
- Molecular Weight (MW)
- LogP
- Number of Hydrogen Bond Donors
- Number of Hydrogen Bond Acceptors

### Model Training and Optimization

1. We used PyCaret to compare various regression models and identify the best performing one for our dataset.
2. Orthogonal Matching Pursuit (OMP) was selected as the best model based on PyCaret's evaluation.
3. We split the data into training (80%) and test (20%) sets.
4. The OMP model was further optimized using GridSearchCV to find the best hyperparameters, specifically the number of non-zero coefficients.

### Model Evaluation

We evaluated the optimized model using three metrics:
1. Mean Squared Error (MSE)
2. R-squared (R²)
3. Mean Absolute Error (MAE)

### Prediction and Visualization

1. We used the optimized model to predict IC50 values for the entire dataset.
2. A scatter plot was created to visualize the relationship between actual and predicted IC50 values.
3. The correlation coefficient between actual and predicted IC50 values was calculated.

## Results and Interpretation

The optimized Orthogonal Matching Pursuit model showed the following performance metrics on the test set:

- Mean Squared Error: 1.2943
- R-squared: 0.4545
- Mean Absolute Error: 0.8845

The R-squared value of 0.4545 indicates that our model explains about 45.45% of the variance in the IC50 values. While this shows some predictive power, there's still a significant portion of variability unaccounted for.

The scatter plot of actual vs. predicted IC50 values revealed a positive correlation, with a correlation coefficient of 0.6870. This moderate positive correlation suggests that our model's predictions generally align with the actual values, but there's room for improvement.

## Comparison with Target Paper

The original paper reported R² values ranging from 0.57 to 0.72 for different feature sets and algorithms. Our model's R² of 0.4545 falls slightly below this range, suggesting that our reproduction didn't fully capture the performance reported in the original study. This discrepancy could be due to differences in feature selection, the specific subset of data used, or the choice of algorithm.

## Conclusion and Insights

Our attempt to reproduce the results of the target paper yielded a model with moderate predictive power for cancer cell line drug sensitivity. While we didn't achieve the same level of performance as the original study, our work demonstrates the feasibility of using machine learning to predict drug responses based on molecular properties.

Key insights:
1. The importance of comprehensive feature selection: Our use of Lipinski descriptors alone may not capture all relevant molecular properties influencing drug sensitivity.
2. The challenge of data quality and completeness: Removing rows with missing SMILES data potentially reduced our dataset's size and diversity.
3. The potential of ensemble or more advanced models: Given the complexity of drug-cell line interactions, more sophisticated models might yield better results.

Future work could focus on expanding the feature set, exploring more advanced ML techniques, and incorporating additional biological information to improve predictive performance.
