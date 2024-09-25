## **Introduction**
In this Phase 2 drug discovery project, our team developed a machine learning model to predict bioactive compounds against *Epidermal Growth Factor Receptor erbB1* (CHEMBL203). Utilizing the ChEMBL database, we aimed to create a robust predictive model for pIC50 values, potentially accelerating the drug discovery process for related diseases such as cancer.

## **Methods:**

### **Data Collection**
We retrieve bioactivity data specifically for the *Epidermal Growth Factor Receptor erbB1* (CHEMBL203). Here, we retrieved pChEMBL values, which provide a standardized measure of bioactivity for the target.

### **Data Pre-processing of Bioactivity Data**

Compounds that have missing values in the `standard_value` or `canonical_smiles` columns was removed from the dataset. This ensures that the analysis is based on complete, valid data. We then create a new dataset that combines the `molecule_chembl_id`, `canonical_smiles`, and `standard_value`, along with the bioactivity class for further analysis.

### ** Classification of Compound based on their bioactivity**
The bioactivity data uses IC50 values to classify compounds:
- **Active** (IC50 < 1000 nM),
- **Inactive** (IC50 > 10,000 nM), or 
- **Intermediate** (1000 nM ≤ IC50 ≤ 10,000 nM).


This classification allows for a clearer understanding of the bioactivity spectrum.

### **Calculating Lipinski Descriptors**
Lipinski's Rule of Five was used to evaluate the drug-likeness of a compound based on its absorption, distribution, metabolism, and excretion (ADME) properties:
- **Molecular weight** less than 500 Da.
- **LogP** (octanol-water partition coefficient) less than 5.
- **Hydrogen bond donors** fewer than 5.
- **Hydrogen bond acceptors** fewer than 10.

### **Converting IC50 to pIC50**
To achieve a more uniform distribution of IC50 values, we converted the values to the negative logarithmic scale:

\[
\text{pIC50} = -\log_{10}(\text{IC50 in M})
\]

This transformation normalizes the data and prepares it for subsequent analysis.

### **Exploratory Data Analysis (Chemical Space Analysis)**
#### **Scatter Plot of Molecular Weight vs. LogP**
By plotting the molecular weight (MW) against the LogP, we can visualize how bioactivity classes span chemical spaces. This offers insights into how the bioactivity of compounds correlates with their molecular properties.

### **Molecular Descriptors Calculation Using RDKit**
RDKit will be used to calculate over 200 molecular descriptors for each compound. These descriptors capture various properties such as size, shape, and electronegativity, which influence bioactivity.

### **Training a Random Forest Regressor Model**
1. **Data Splitting:** The dataset is divided into training (80%) and testing (20%) sets.
2. **Feature Scaling:** Standard scaling is applied to the features to normalize the descriptor values.
3. **Model Training:** A Random Forest Regressor is trained on the scaled training data.
4. **Model Evaluation:** The model is evaluated using the Mean Squared Error (MSE) and R² scores to assess prediction accuracy.
5. **Feature Importance:** The most important molecular descriptors contributing to the prediction of pIC50 values are identified.


### **Model Selection and Training:**
We selected a Random Forest Regressor for this project due to its ability to handle non-linear relationships and its capability to provide feature importance for further interpretability. The data was split into training (80%) and testing (20%) sets, and features were scaled using `StandardScaler` to standardize the range of the descriptor values. 

### **Model Evaluation:**
The performance of the model was evaluated using several metrics the following metrices Mean Squared Error (MSE), R² Score and 5-Fold Cross-Validation.



## **Results:**



### **Cross-validation of the Model**
Using 5-fold cross-validation, we will calculate the cross-validated MSE to assess the robustness of the model across different subsets of the data. This ensures that the model generalizes well to unseen data.

### **Plotting Results**
1. **Scatter Plot of Actual vs. Predicted pIC50 Values:** This plot visualizes the correlation between true and predicted pIC50 values.
2. **Feature Importance Plot:** A bar plot will display the importance of each molecular descriptor, helping to identify which features contribute most to bioactivity predictions.

By following this process, we gain a comprehensive understanding of the bioactivity data, identify key molecular features, and develop a predictive model for pIC50 values, providing valuable insights for drug discovery.
