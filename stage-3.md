## **Phase 1: Virtual Screening and Molecular Docking of inhibitors against Epidermal Growth Factor Receptor (EGFR)**

## Authors: Oluwasola Michael, Muhammad Abdur Rehman, Oghenerukevwe Omatie Adiohwo and Bob-Manuel Osuji


### **Introduction**

The *EGFR* gene encodes a transmembrane glycoprotein that is part of the protein kinase superfamily. This protein acts as a receptor for the epidermal growth factor family. Upon binding to epidermal growth factor, EGFR induces receptor dimerization and tyrosine autophosphorylation, which leads to cell proliferation. Mutations in the *EGFR* gene are known to be associated with lung cancer [1]. EGFR exhibits membranous and cytoplasmic expression in varying fractions of tumor cells across several cancer types at the protein level. It is also expressed in several cancers at the mRNA level. High expression of this gene is linked to an unfavorable prognosis in urothelial cancer [2].

---

### **Methodology**

### **Phytochemical Library**

Fenugreek (*Trigonella foenum-graecum*), belonging to the Leguminosae family, is an annual plant widely recognized as an Indian medicinal herb. It is rich in bioactive compounds, including steroidal saponins, diosgenin, and furastanol glycosides. Fenugreek, which grows natively in India and Northern Africa, is used to prepare medicinal extracts from its leaves and seeds. To support our study, we have retrieved the phytochemicals present in Fenugreek and constructed a phytochemical library for molecular docking against *EGFR* [1][2].


### **Protein Structure**

The protein sequence of *EGFR* was obtained from the Protein Data Bank (PDB) with ID 5EDP. This structure represents the EGFR kinase with mutations (T790M/L858R) in its apo form and is classified as a transferase/transferase inhibitor. The protein comprises a single chain (A) with a sequence length of 331. Gene names associated with EGFR include *EGFR*, *ERBB*, *ERBB1*, and *HER1* [3].

The active site of the PDB structure was predicted using CASTp, located at position 837 [4].


### **Molecular Docking**

Molecular docking was performed between the EGFR protein and a library of 50 compounds, including the reference compound Gefitinib (PubChem ID: 123631) [5]. Docking was conducted using PyRx, with each ligand undergoing 9 iterations, yielding a total of 459 docking results. The ligand with the most negative binding affinity was selected for further analysis. Results are summarized in the table below.


---

### **Result**
This table presents the binding affinity and RMSD values for the top poses of 50 phytochemicals when docked against our target protein.

| Ligand                 | Binding Affinity | RMSD_UB | RMSD_LB |
|------------------------|------------------|---------|---------|
| 5edp_289_uff_E=55.42   | -4.9             | 0       | 0       |
| 5edp_892_uff_E=156.51  | -5.6             | 0       | 0       |
| 5edp_938_uff_E=58.73   | -4.8             | 0       | 0       |
| 5edp_985_uff_E=57.46   | -4.9             | 0       | 0       |
| 5edp_1054_uff_E=125.61 | -4.8             | 0       | 0       |
| 5edp_1057_uff_E=62.72  | -4.8             | 0       | 0       |
| 5edp_3764_uff_E=337.15 | -6.5             | 0       | 0       |
| 5edp_4276_uff_E=330.81 | -5.0             | 0       | 0       |
| 5edp_5997_uff_E=549.32 | -7.7             | 0       | 0       |
| 5edp_6613_uff_E=133.81 | -4.7             | 0       | 0       |
| 5edp_6989_uff_E=95.97  | -5.2             | 0       | 0       |
| 5edp_7463_uff_E=91.91  | -5.0             | 0       | 0       |
| 5edp_8174_uff_E=44.04  | -4.4             | 0       | 0       |
| 5edp_8175_uff_E=34.10  | -4.2             | 0       | 0       |
| 5edp_10248_uff_E=228.13| -5.0             | 0       | 0       |
| 5edp_10364_uff_E=78.47 | -5.3             | 0       | 0       |
| 5edp_17697_uff_E=50.62 | -3.7             | 0       | 0       |
| 5edp_79036_uff_E=108.75| -5.1             | 0       | 0       |
| 5edp_92759_uff_E=201.39| -6.3             | 0       | 0       |
| 5edp_99474_uff_E=741.60| -9.3             | 0       | 0       |
| 5edp_114776_uff_E=472.96| -7.6            | 0       | 0       |
| 5edp_114829_uff_E=185.86| -6.9            | 0       | 0       |
| 5edp_123631_uff_E=518.86| -7.5            | 0       | 0       |
| 5edp_162350_uff_E=453.84| -7.4            | 0       | 0       |
| 5edp_171548_uff_E=328.21| -5.3            | 0       | 0       |
| 5edp_439246_uff_E=195.81| -7.1            | 0       | 0       |
| 5edp_441005_uff_E=241.83| -6.5            | 0       | 0       |
| 5edp_441900_uff_E=753.48| -9.2            | 0       | 0       |
| 5edp_442343_uff_E=218.81| -5.7            | 0       | 0       |
| 5edp_442428_uff_E=615.92| -8.2            | 0       | 0       |
| 5edp_444170_uff_E=1467.29| -6.8           | 0       | 0       |
| 5edp_493570_uff_E=317.94| -7.1            | 0       | 0       |
| 5edp_519857_uff_E=221.98| -6.2            | 0       | 0       |
| 5edp_638278_uff_E=312.87| -6.5            | 0       | 0       |
| 5edp_2773624_uff_E=102.68| -4.2           | 0       | 0       |
| 5edp_5280343_uff_E=380.43| -7.2           | 0       | 0       |
| 5edp_5280443_uff_E=233.26| -7.1           | 0       | 0       |
| 5edp_5280445_uff_E=242.10| -7.4           | 0       | 0       |
| 5edp_5280459_uff_E=587.34| -8.4           | 0       | 0       |
| 5edp_5280863_uff_E=362.50| -7.1           | 0       | 0       |
| 5edp_5283361_uff_E=38.25| -3.9            | 0       | 0       |
| 5edp_6429300_uff_E=512.64| -6.6           | 0       | 0       |
| 5edp_6432005_uff_E=264.33| -6.6           | 0       | 0       |
| 5edp_6857447_uff_E=255.66| -6.1           | 0       | 0       |
| 5edp_10398656_uff_E=220.84| -6.5          | 0       | 0       |
| 5edp_12267346_uff_E=156.43| -6.6          | 0       | 0       |
| 5edp_12306047_uff_E=224.98| -6.0          | 0       | 0       |
| 5edp_54670067_uff_E=200.65| -5.5          | 0       | 0       |
| 5edp_91753440_uff_E=234.14| -6.3          | 0       | 0       |
| 5edp_101422334_uff_E=527.08| -7.4         | 0       | 0       |
| 5edp_135398658_uff_E=289.04| -7.7         | 0       | 0       |


## **Phase 2: Machine learning model for predicting therapeutic target inhibitors against Epidermal Growth Factor Receptor (EGFR)**

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




---

### **References**

1. [http://inconnate.com/Download/Fenugreek/document3.pdf](http://inconnate.com/Download/Fenugreek/document3.pdf)
2. [https://www.sciencedirect.com/science/article/pii/S1658077X15301065](https://www.sciencedirect.com/science/article/pii/S1658077X15301065)
3. [https://www.rcsb.org/structure/5EDP](https://www.rcsb.org/structure/5EDP)
4. [http://sts.bioe.uic.edu/castp/index.html?5edp](http://sts.bioe.uic.edu/castp/index.html?5edp)
5. Hanan EJ, Baumgardner M, Bryan MC, et al. 4-Aminoindazolyl-dihydrofuro[3,4-d]pyrimidines as non-covalent inhibitors of mutant epidermal growth factor receptor tyrosine kinase. *Bioorg Med Chem Lett.* 2016 Jan 15;26(2):534-539. doi: 10.1016/j.bmcl.2015.11.078.
6. Hsu, W., Yang, J., Mok, T., & Loong, H. (2017). Overview of current systemic management of EGFR-mutant NSCLC. *Annals of Oncology*, 29, i3-i9. [https://doi.org/10.1093/annonc/mdx702](https://doi.org/10.1093/annonc/mdx702)
7. [https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=1956](https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=1956)
8. [https://www.proteinatlas.org/ENSG00000146648-EGFR](https://www.proteinatlas.org/ENSG00000146648-EGFR)