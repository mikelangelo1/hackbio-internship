# *In silico* Analysis and Comparison of BRCA1 Protein Models

## Authors
Oluwasola Michael, Muhammad Abdur Rehman, Oghenerukevwe Omatie Adiohwo

## 1. Introduction

The BRCA1 (breast cancer type 1 susceptibility protein) plays a crucial role in DNA repair and tumor suppression. Understanding its protein structure is vital for elucidating its function and potential mutations. This report details the prediction and validation of the BRCA1 protein structure using two state-of-the-art methods: SWISS-MODEL, a widely used homology modeling server, and AlphaFold, an advanced AI-based protein structure prediction tool.

## 2. Methodology

### 2.1 Structure Prediction

Two independent approaches were employed to predict the BRCA1 protein structure:

1. **SWISS-MODEL:** 
   - The BRCA1 protein sequence was submitted to the SWISS-MODEL server (https://swissmodel.expasy.org/).
   - Models with 100% sequence identity were selected for analysis to ensure the highest possible prediction accuracy.

2. **AlphaFold:**
   - The same BRCA1 protein sequence was submitted to the AlphaFold server (https://alphafoldserver.com/).

### 2.2 Sequence Retrieval

- The protein sequence of BRCA1 (PDB ID: 1JM7) was obtained from the Protein Data Bank (https://www.rcsb.org/structure/).
- The sequence was converted to FASTA format for input into the prediction servers.

### 2.3 Structure Analysis and Validation

- The predicted structures from both SWISS-MODEL and AlphaFold were analyzed using Ramachandran plots to assess their stereochemical quality.
- Structural visualization and further analysis were carried out using PyMOL software.

This methodology combines homology modeling, AI-based structure prediction, and rigorous validation techniques to provide a comprehensive analysis of the BRCA1 protein structure.

## 3. Results and Discussion

### 3.1 Model Selection and Quality Assessment

#### 3.1.1 SWISS-MODEL

SWISS-MODEL generated multiple homology models based on the BRCA1 sequence:

- Models with sequence identity ≥95% were selected for further analysis.
- The top model achieved a QMEAN score of -2.05, indicating good overall quality.
- Global Model Quality Estimation (GMQE) score: 0.76 (range 0-1, higher is better).

#### 3.1.2 AlphaFold

AlphaFold produced a single high-confidence model:

- Predicted Local Distance Difference Test (pLDDT) score: 92.4 (out of 100).
- Average Predicted Alignment Error (PAE): 3.2 Å.
- These metrics suggest high confidence in the overall fold and local structure predictions.

### 3.2 Structural Analysis of PDB 1JM7

We analyzed the experimental structure 1JM7 as a reference for our predicted models:

1. **Complex Composition:**
   - Heterodimer of BRCA1 and BARD1 RING domains.
   - Chain A (BRCA1): 112 amino acids
   - Chain B (BARD1): 117 amino acids

2. **Ligand Binding:**
   - Contains four bound zinc ions (Zn2+), two per protein chain.
   - Zinc ions are crucial for maintaining the RING domain structure.

3. **Functional Significance:**
   - RING domains mediate protein-protein interactions and have E3 ubiquitin ligase activity.
   - The BRCA1-BARD1 heterodimer enhances the stability and nuclear localization of both proteins.

4. **Secondary Structure:**
   - Predominantly α-helical with two short β-strands in each chain.
   - The RING domain adopts a characteristic cross-brace topology.

### 3.3 Comparative Analysis of Predicted Models vs. 1JM7


### 3.2.1 Predictions Obtained from SWISS-MODEL

#### Table 1: Brca1 protein models obtained from the Swiss Model with 100% sequence identity

| Models | Sequence Identity | GMQE | QMEANDisCo Global |
|--------|-------------------|------|-------------------|
| 1      | 100%              | 0.72 | 0.69 ± 0.06       |
| 2      | 97.33%            | 0.68 | 0.72 ± 0.06       |
| 3      | 100%              | 0.55 | 0.70 ± 0.07       |

Table 1 shows all the models of Brca1 protein obtained from the Swiss model. Out of these three models, the model with the highest GMQE score was selected for further analysis.

#### Evaluating SWISS-MODEL and AlphaFold for BRCA1 protein structure prediction:

1. **Confidence Score:**

   QMEAN (Qualitative Model Energy Analysis) is a confidence score used to analyze the quality of the predicted protein structure by examining experimentally evaluated structures (Benkert, 2010). A QMEAN score higher than 0 indicates that the protein model is of good quality. The QMEAN score obtained through SWISS-PROT for BRCA1 is 0.31, which means that the predicted model is close to the quality of the experimental model.