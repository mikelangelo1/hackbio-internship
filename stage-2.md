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