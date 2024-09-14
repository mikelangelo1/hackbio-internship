# *In silico* Analysis and Comparison of BRCA1 Protein Models

## Authors
Oluwasola Michael, Muhammad Abdur Rehman, Oghenerukevwe Omatie Adiohwo and Bob-Manuel Osuji

## 1. Introduction

The BRCA1 (breast cancer type 1 susceptibility protein) plays a crucial role in DNA repair and tumor suppression. Understanding its protein structure is vital for elucidating its function and potential mutations. This report details the prediction and validation of the BRCA1 protein structure using two state-of-the-art methods: SWISS-MODEL and Alphafold.
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

![Structure of BRCA1 (PDB ID: 1JM7)](./images/Stage-2/1JM7PDB_PROTEIN%20INT%202.png)

*Figure 1: Structure of BRCA1 (PDB ID: 1JM7)*

### 2.3 Structure Analysis and Validation

- The predicted structures from both SWISS-MODEL and AlphaFold were analyzed using Ramachandran plots to assess their stereochemical quality.
- Structural visualization and further analysis were carried out using PyMOL software.

This methodology combines homology modeling, AI-based structure prediction, and rigorous validation techniques to provide a comprehensive analysis of the BRCA1 protein structure.

## 3. Results and Discussion

### 3.1 Model Selection and Quality Assessment

#### 3.1.1 SWISS-MODEL
![Figure 2: Model predicted by SwissModel](./images/Stage-2/swiss-model.jpg)
*Figure 2: Model predicted by SwissModel*

SWISS-MODEL generated multiple homology models based on the BRCA1 sequence:

- Models with sequence identity ≥95% were selected for further analysis.
- The top model achieved a QMEAN score of -2.05, indicating good overall quality.
- Global Model Quality Estimation (GMQE) score: 0.76 (range 0-1, higher is better).

#### 3.1.2 AlphaFold
![Figure 3: Model predicted by Alphafold](./images/Stage-2/1JM7_Alphafold.png)
*Figure 3: Model predicted by Alphafold*

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


### 3.3.1 Predictions Obtained from SWISS-MODEL

#### Table 3.1: Brca1 protein models obtained from the Swiss Model with 100% sequence identity

| Models | Sequence Identity | GMQE | QMEANDisCo Global |
|--------|-------------------|------|-------------------|
| 1      | 100%              | 0.72 | 0.69 ± 0.06       |
| 2      | 97.33%            | 0.68 | 0.72 ± 0.06       |
| 3      | 100%              | 0.55 | 0.70 ± 0.07       |

Table 3.1 shows all the models of Brca1 protein obtained from the Swiss model. Out of these three models, the model with the highest GMQE score was selected for further analysis.

#### Evaluating SWISS-MODEL and AlphaFold for BRCA1 protein structure prediction:

**Confidence Score:**

   QMEAN (Qualitative Model Energy Analysis) is a confidence score used to analyze the quality of the predicted protein structure by examining experimentally evaluated structures (Benkert, 2010). A QMEAN score higher than 0 indicates that the protein model is of good quality. The QMEAN score obtained through SWISS-PROT for BRCA1 is 0.31, which means that the predicted model is close to the quality of the experimental model.

   For AlphaFold, the confidence score is predicted by per-residue pLDDT (predicted Local Distance Difference Test). Most of the BRCA1 structure predicted by AlphaFold has a pLDDT value higher than 90, indicating a very strong correlation between experimental and predicted structures. The pTM (predicted Template Modeling) has a score of 0.69, which means that the model is 69% confident that the predicted values are highly accurate.


## 3.4 Structural Alignment

Three protein structures were obtained from the Protein Data Bank (PDB):

- 4OFB (inhibitor-bound)
- 1JM7 (ligand-bound)
- 1OQA (unbound)

## 3.4.1 Structural Alignments of BRCA1 Domains

### RING Domain (PDB: 1JM7)

| AlphaFold Alignment | Swiss-Model Alignment |
|:-------------------:|:---------------------:|
| ![AlphaFold vs 1JM7](./images/Stage-2/ALIGN_1JM7-ALPHAFOLD.png) | ![Swiss-Model vs 1JM7](./images/Stage-2/ALIGN_1JM7-SWISSMODEL.png) |
| Figure 4: 3D AlphaFold structure aligned with Crystal structure of 1JM7 from PDB | Figure 5: 3D Swiss-Model structure aligned with Crystal structure of 1JM7 from PDB |

### BRCT Domain (PDB: 1OQA)

| AlphaFold Alignment | Swiss-Model Alignment |
|:-------------------:|:---------------------:|
| ![AlphaFold vs 1OQA](./images/Stage-2/ALIGN_1OQA-ALPHAFOLD.png) | ![Swiss-Model vs 1OQA](./images/Stage-2/ALIGN_1OQA-SWISSMODEL.png) |
| Figure 6: 3D AlphaFold structure aligned with Crystal structure of 1OQA from PDB | Figure 7: 3D Swiss-Model structure aligned with Crystal structure of 1OQA from PDB |

### BRCT Domain (PDB: 4OFB)

| AlphaFold Alignment | Swiss-Model Alignment |
|:-------------------:|:---------------------:|
| ![AlphaFold vs 4OFB](./images/Stage-2/ALIGN_4OFB-ALPHAFOLD-updated.png) | ![Swiss-Model vs 4OFB](./images/Stage-2/ALIGN_4OFB-SWISSMODEL.png) |
| Figure 8: AlphaFold structure aligned with Crystal structure of 4OFB from PDB | Figure 9: 3D Swiss-Model structure aligned with Crystal structure of 4OFB from PDB |

These structures were aligned with predicted models generated by SWISS-MODEL and AlphaFold using PyMOL (Schrödinger, LLC). Root-mean-square deviation (RMSD) values were calculated for each alignment to assess structural similarity.

## 3.5 RMSD Analysis

Structural alignments were performed using PyMOL's `align` command. The resulting RMSD values for each alignment are as follows:

| Alignment                 | RMSD (Å) | Atoms Aligned |
|---------------------------|----------|---------------|
| AlphaFold model vs. 4OFB  | 8.629    | 326           |
| SWISS-MODEL vs. 4OFB      | 8.319    | 122           |
| SWISS-MODEL vs. 1JM7      | 0.684    | 1191          |
| AlphaFold model vs. 1JM7  | 2.001    | 1373          |
| SWISS-MODEL vs. 1OQA      | 8.433    | 122           |
| AlphaFold model vs. 1OQA  | 8.275    | 122           |

The alignment process involved multiple cycles of refinement, with outlier atoms rejected in each cycle to improve the overall fit. The final RMSD values represent the structural deviation after optimization.

### Key Observations

1. The SWISS-MODEL alignment with 1JM7 shows the lowest RMSD (0.684 Å), indicating the highest structural similarity.
2. AlphaFold's model shows better alignment with 1JM7 (RMSD = 2.001 Å) compared to other structures.
3. Both SWISS-MODEL and AlphaFold models show higher RMSD values when aligned with 4OFB and 1OQA, suggesting significant structural differences.

# 4.0 Conclusion

This study provides a comprehensive analysis of the BRCA1 protein structure using state-of-the-art computational methods. By leveraging both homology modeling (SWISS-MODEL) and AI-based prediction (AlphaFold), we've gained valuable insights into the structural characteristics of this crucial tumor suppressor protein. Both SWISS-MODEL and AlphaFold produced high-quality predictions of the BRCA1 structure, with confidence scores indicating good overall model reliability.These findings pave the way for more targeted experimental studies and may contribute to the development of novel therapeutic strategies targeting BRCA1-related cancers.

**References:**

1. Brzovic PS, Rajagopal P, Hoyt DW, King MC, Klevit RE. Structure of a BRCA1-BARD1 heterodimeric RING-RING complex. Nat Struct Biol. 2001 Oct;8(10):833-7. doi: 10.1038/nsb1001-833. PMID: 11573085.

2. Gaiser OJ, Ball LJ, Schmieder P, Leitner D, Strauss H, Wahl M, Kühne R, Oschkinat H, Heinemann U. Solution structure, backbone dynamics, and association behavior of the C-terminal BRCT domain from the breast cancer-associated protein BRCA1. Biochemistry. 2004 Dec 28;43(51):15983-95. doi: 10.1021/bi049550q. PMID: 15609993.

3. White ER, Sun L, Ma Z, Beckta JM, Danzig BA, Hacker DE, Huie M, Williams DC, Edwards RA, Valerie K, Glover JN, Hartman MC. Peptide library approach to uncover phosphomimetic inhibitors of the BRCA1 C-terminal domain. ACS Chem Biol. 2015 May 15;10(5):1198-208. doi: 10.1021/cb500757u. Epub 2015 Feb 5. PMID: 25654734; PMCID: PMC4433557.
