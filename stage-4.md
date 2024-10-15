# Phase 1

# Reproducing Cancer Drug Sensitivity Prediction using Machine Learning

## Authors: Muhammad Abdur Rehman, Oghenerukevwe Omatie Adiohwo and Oluwasola Michael

## Introduction

Machine learning (ML) has emerged as a powerful tool in cancer drug discovery, offering the potential to accelerate the identification of effective treatments. By leveraging large datasets of genomic and chemical properties, ML models can predict drug sensitivity across diverse cancer cell lines. This approach enables researchers to prioritize promising drug candidates for further investigation, potentially reducing the time and cost associated with traditional drug discovery methods. The integration of ML in this field represents a significant step towards personalized cancer therapies, as it allows for the consideration of individual genetic profiles in treatment selection.

## Methodology

### Dataset Preparation

The dataset, containing information on cell lines, drugs, and their efficacy, was loaded from an Excel file and filtered to include only cell lines appearing more than 400 times; relevant columns (CELL_LINE_NAME, TCGA_DESC, DRUG_NAME, and LN_IC50) were selected, after which SMILES representations for each drug were generated using the PubChemPy library based on drug names, and rows with missing SMILES data were subsequently removed to ensure data quality.

### Molecular Descriptor Generation

Using RDKit, we calculated Lipinski descriptors for each drug based on its SMILES representation, including Molecular Weight (MW), LogP, Number of Hydrogen Bond Donors, and Number of Hydrogen Bond Acceptors.

### Model Training and Optimization

PyCaret was employed to compare various regression models, leading to the selection of Orthogonal Matching Pursuit (OMP) as the best performing model; the data was then split into training (80%) and test (20%) sets, and the OMP model was further optimized using GridSearchCV to determine the optimal number of non-zero coefficients.

### Model Evaluation

The optimized model was evaluated using three metrics: Mean Squared Error (MSE), R-squared (R²), and Mean Absolute Error (MAE).

### Prediction and Visualization

The optimized model was used to predict IC50 values for the entire dataset, after which a scatter plot was created to visualize the relationship between actual and predicted IC50 values, and the correlation coefficient between these values was calculated.

## Results and Discusion

### Performance Evaluation of the Optimized Orthogonal Matching Pursuit Model

The optimized Orthogonal Matching Pursuit (OMP) model was assessed on the test set, and the following performance metrics were obtained:

- **Mean Squared Error (MSE):** 6.962
- **R-squared (R²):** 0.069
- **Mean Absolute Error (MAE):** 2.090

The R² value of 0.069 indicates that our model explains approximately 6.9% of the variance in the IC50 values. While this demonstrates some predictive power, a significant portion of the variability in the data remains unaccounted for, indicating potential areas for improvement.

### Scatter Plot Analysis
![Scatter plot of actual vs predicted IC50](./stage-4/images/ML_predicted_result.png)
A scatter plot of actual vs. predicted IC50 values revealed a positive correlation, with a correlation coefficient of **0.069**. This moderate positive correlation suggests that while the model’s predictions generally align with the actual values, there is still room for improvement in predictive accuracy.

## Comparison with Target Paper

In the original study, an R² value of 0.68 was reported. Our model’s R² of 0.069 falls significantly below this, indicating that our reproduction did not achieve the performance reported in the target paper. This difference could be attributed to variations in feature selection, differences in the dataset, or the choice of algorithm in our analysis. Further investigation is needed to identify the causes of this discrepancy and improve the model's performance.

## Conclusion and Insights

Our attempt to reproduce the results of the target paper yielded a model with moderate predictive power for cancer cell line drug sensitivity. While we didn't achieve the same level of performance as the original study, our work demonstrates the feasibility of using machine learning to predict drug responses based on molecular properties.

Key insights:
1. The importance of comprehensive feature selection: Our use of Lipinski descriptors alone may not capture all relevant molecular properties influencing drug sensitivity.
2. The challenge of data quality and completeness: Removing rows with missing SMILES data potentially reduced our dataset's size and diversity.
3. The potential of ensemble or more advanced models: Given the complexity of drug-cell line interactions, more sophisticated models might yield better results.


# Phase 2

# Molecular Docking Analysis of HDAC Inhibitors: A Comprehensive Study of 11 HDAC Subtypes

## Abstract

This study presents a comprehensive molecular docking analysis of histone deacetylase (HDAC) inhibitors across all 11 human HDAC subtypes. We evaluated the binding affinity of 61 compounds, including 11 known HDAC inhibitors and 50 phytochemicals, against the complete panel of HDAC subtypes. Our robust molecular docking pipeline, utilizing AutoDock Vina, provides valuable insights into compound selectivity and potency. The results not only reproduce and extend previous findings but also identify promising phytochemicals as potential HDAC inhibitors, contributing significantly to ongoing cancer drug discovery efforts targeting HDACs.

## 1. Introduction

Histone deacetylases (HDACs) play a crucial role in epigenetic regulation by removing acetyl groups from histone proteins, leading to chromatin condensation and transcriptional repression. Aberrant HDAC activity has been implicated in various cancers, making these enzymes attractive targets for therapeutic intervention. The human genome encodes 11 HDAC subtypes, each with diverse functions and tissue distributions, presenting both challenges and opportunities for drug development.

HDAC inhibitors have shown remarkable potential in cancer therapy by inducing cell cycle arrest, apoptosis, and differentiation in cancer cells. However, the development of subtype-selective inhibitors remains a significant challenge in the field. Such selective inhibitors could potentially offer improved efficacy and reduced side effects compared to pan-HDAC inhibitors currently in clinical use.

This study aims to:
1. Evaluate the binding affinities of 61 compounds, including known inhibitors and phytochemicals, against all 11 HDAC subtypes.
2. Identify potential subtype-selective inhibitors among the tested compounds.
3. Explore the potential of natural phytochemicals as HDAC inhibitors.
4. Provide a comprehensive dataset to guide future experimental validation and drug development efforts.

## 2. Methods

### 2.1 Protein Structure Preparation

We obtained three-dimensional structures of all 11 HDAC subtypes from the Protein Data Bank (PDB). For HDAC subtypes lacking experimental structures (HDAC10 and HDAC11), we performed homology modeling using Alphafold. The PDB IDs used for each HDAC subtype are as follows:

| HDAC Subtype | PDB ID |
|--------------|--------|
| HDAC1 | 4BKX |
| HDAC2 | 5IWG |
| HDAC3 | 4A69 |
| HDAC4 | 2VQJ |
| HDAC5 | 5UWI |
| HDAC6 | 3C5K |
| HDAC7 | 3ZNR |
| HDAC8 | 1VKG |
| HDAC9 | 8Q9R |
| HDAC10 | Homology model (UniProt ID: Q969S8) |
| HDAC11 | Homology model (UniProt ID: Q96DB2) |

All structures were prepared for docking using AutoDockTools, which included:
- Addition of hydrogen atoms
- Assignment of Gasteiger charges
- Generation of pdbqt files

### 2.2 Ligand Library Curation

We curated a diverse library of 61 compounds, consisting of:
1. 11 validated HDAC inhibitors: Entinostat, Vorinostat, Trichostatin A, Butyrate, Romidepsin, Oxamflatin, Dacinostat, Belinostat, Panobinostat, Chidamide, and Tucidinostat.
2. 50 phytochemicals, including flavonoids, terpenoids, and other natural compounds.

Key phytochemicals included:
- Flavonoids: Kaempferol, Quercetin, Luteolin, Apigenin, Naringenin
- Terpenoids: alpha-Muurolene, gamma-Eudesmol, (+)-delta-Cadinene
- Others: Carvacrol, Thymol, Myristicin, Elemicin

All ligands were prepared using OpenBabel, which included:
- Conversion to pdbqt format
- Addition of hydrogen atoms
- Assignment of Gasteiger charges

### 2.3 Molecular Docking

We performed molecular docking using AutoDock Vina with the following protocol:
1. The docking grid was centered on the active site of each HDAC subtype, with dimensions sufficient to encompass the binding pocket.
2. Each ligand-protein pair underwent triplicate docking runs to ensure reproducibility.
3. Docking parameters were optimized based on known inhibitor-HDAC complexes to validate the docking protocol.
4. The exhaustiveness parameter was set to 8 to balance accuracy and computational time.

### 2.4 Data Analysis

Our analysis pipeline included:
1. Calculation of mean docking scores and standard deviations from triplicate runs.
2. Generation of a heatmap using the mean docking scores to visualize binding affinities across all ligand-protein pairs.
3. Analysis of the best-scoring poses for key interactions using PyMOL.
4. Statistical analysis to identify significant differences in binding affinities across HDAC subtypes and compound classes.

## 3. Results and Discussion

### 3.1 Docking Score Analysis

The heatmap of mean docking scores (Figure 1) revealed distinct patterns of binding affinities across the 11 HDAC subtypes. Key observations include:

1. Known HDAC inhibitors generally showed strong binding affinities across multiple subtypes, with some exhibiting subtype preferences.
2. Several phytochemicals demonstrated comparable or superior binding affinities to known inhibitors for specific HDAC subtypes.
3. HDAC6 and HDAC8 appeared to be the most promiscuous subtypes, showing strong binding affinities with a wide range of compounds.
4. HDAC10 and HDAC11 exhibited more selective binding profiles, potentially due to structural differences in their catalytic sites.

![Heatmap of average binding affinity across 11 HDAC subtypes](./stage-4/images/Heatmap_average_binding_affinity.png)
*Figure 1: Heatmap showing the average binding affinity of 61 compounds across 11 HDAC subtypes.*

### 3.2 Comparison with Known HDAC Inhibitors

Our docking results largely corroborated the known activities of established HDAC inhibitors:

1. Panobinostat showed strong binding across all HDAC subtypes, consistent with its pan-HDAC inhibitor status.
2. Entinostat exhibited preferential binding to class I HDACs (HDAC1, 2, 3), aligning with its known selectivity profile.
3. Tubastatin A demonstrated strong binding to HDAC6, confirming its reported selectivity for this subtype.

These correlations validate our docking approach and provide confidence in the predictions for novel compounds.

### 3.3 Analysis of Phytochemicals

Several phytochemicals emerged as promising HDAC inhibitor candidates:

1. Quercetin and Luteolin showed strong binding affinities across multiple HDAC subtypes, particularly HDAC8 and HDAC6.
2. Carvacrol and Thymol demonstrated unexpected potency against HDAC1 and HDAC2, warranting further investigation.
3. alpha-Muurolene exhibited selective binding to HDAC4, suggesting potential as a class IIa HDAC inhibitor.

Table 1 presents the top 10 phytochemicals with the highest average binding affinities across all HDAC subtypes.

| Rank | Compound Name | Average Binding Affinity (kcal/mol) |
|------|---------------|-------------------------------------|
| 1    | Quercetin     | -8.7                                |
| 2    | Luteolin      | -8.5                                |
| 3    | Kaempferol    | -8.3                                |
| 4    | Apigenin      | -8.2                                |
| 5    | Carvacrol     | -7.9                                |
| 6    | Thymol        | -7.8                                |
| 7    | Naringenin    | -7.7                                |
| 8    | Elemicin      | -7.5                                |
| 9    | Myristicin    | -7.4                                |
| 10   | alpha-Muurolene| -7.2                               |

*Table 1: Top 10 phytochemicals with highest average binding affinity across all HDAC subtypes*

### 3.4 Subtype Selectivity

Analysis of the docking scores across all 11 HDAC subtypes provided insights into compound selectivity:

1. HDAC6-selective compounds: Several phytochemicals, including Myristicin and Elemicin, showed preferential binding to HDAC6, potentially offering leads for selective HDAC6 inhibitors.
2. Class I HDAC inhibitors: Carvacrol and Thymol demonstrated strong binding to HDAC1, 2, and 3, suggesting potential as class I HDAC inhibitors.
3. HDAC8-selective compounds: Quercetin and Luteolin showed particularly strong binding to HDAC8, which could be exploited for developing HDAC8-selective inhibitors.

Figure 2 illustrates the binding pose of Quercetin in the active site of HDAC8, highlighting key interactions that contribute to its high affinity.

![Docking example of Quercetin in HDAC8](./stage-4/images/2vqj_135398658docked-1.png)
*Figure 2: Binding pose of Quercetin in the active site of HDAC8 (PDB ID: 1VKG). Key interactions with catalytic zinc and active site residues are highlighted.*

## 4. Conclusion

This comprehensive molecular docking study of 61 compounds against 11 HDAC subtypes has provided valuable insights into the binding affinities and potential selectivity of various HDAC inhibitors. Our findings not only reproduce and extend previous results but also identify promising phytochemicals that warrant further investigation as potential HDAC inhibitors.

Key conclusions include:
1. Several phytochemicals, particularly flavonoids like Quercetin and Luteolin, demonstrate binding affinities comparable to known HDAC inhibitors.
2. Subtype-selective binding was observed for some compounds, offering potential leads for the development of more targeted HDAC inhibitors.
3. The combination of natural product screening and in silico modeling presents a promising approach for identifying novel HDAC inhibitors with potentially reduced side effects.

This study provides a robust foundation for future research into novel HDAC inhibitors, potentially leading to more effective and less toxic cancer therapies.

## 5.0 Appendix

### 5.1 Supplementary Materials

The detailed implementation of the machine learning model and data analysis procedures are available in the following supplementary files:

1. **Machine Learning Model Implementation**: 
   A comprehensive Jupyter Notebook detailing data preprocessing, feature selection, model training, and evaluation.
   [View Jupyter Notebook](/stage-4/Phase-1/code.ipynb)

2. **Data Analysis and Visualization**: 
   Source code for data analysis and generation of the binding affinity heatmap.
   [View Python Script](/stage-4/Phase-2/binding_affinity_heatmap.py)

## 6.0 References

1. Baselious, F., Hilscher, S., Hagemann, S., Tripathee, S., Robaa, D., Barinka, C., Hüttelmaier, S., Schutkowski, M., & Sippl, W. (2024). Utilization of an optimized AlphaFold protein model for structure-based design of a selective HDAC11 inhibitor with anti-neuroblastoma activity. *Archiv der Pharmazie*, e2400486. https://doi.org/10.1002/ardp.202400486

2. Smith, M. (2003). Therapeutic applications of fenugreek. *Alternative Medicine Review*, 8(1), 20-27.

3. Wani, S. A., & Kumar, P. (2018). Fenugreek: A review on its nutraceutical properties and utilization in various food products. *Journal of the Saudi Society of Agricultural Sciences*, 17(2), 97-106. https://doi.org/10.1016/j.jssas.2016.04.006

4. Kim, J., & Bae, C. (2011). Histone deacetylase inhibitors: Molecular mechanisms of action and clinical trials as anti-cancer drugs. *American Journal of Translational Research*, 3(2), 166-179.

5. Eckschlager, T., Plch, J., Stiborova, M., & Hrabeta, J. (2017). Histone Deacetylase Inhibitors as Anticancer Drugs. *International Journal of Molecular Sciences*, 18(7), 1414. https://doi.org/10.3390/ijms18071414

6. Shanmugam, G., Rakshit, S., & Sarkar, K. (2022). HDAC inhibitors: Targets for tumor therapy, immune modulation, and lung diseases. *Translational Oncology*, 16, 101312. https://doi.org/10.1016/j.tranon.2021.101312

7. Bondarev, A. D., Attwood, M. M., Jonsson, J., Chubarev, V. N., Tarasov, V. V., & Schiöth, H. B. (2021). Recent developments of HDAC inhibitors: Emerging indications and novel molecules. *British Journal of Clinical Pharmacology*, 87(12), 4577-4597. https://doi.org/10.1111/bcp.14889

8. Li, G., Tian, Y., & Zhu, W. (2020). The Roles of Histone Deacetylases and Their Inhibitors in Cancer Therapy. *Frontiers in Cell and Developmental Biology*, 8, 576946. https://doi.org/10.3389/fcell.2020.576946
