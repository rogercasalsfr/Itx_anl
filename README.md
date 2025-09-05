**Immunotherapy trajectory inference**

This project investigates the dynamics of T cell differentiation in the tumor microenvironment (TME) using single-cell RNA sequencing data (GEO123813) from patients pre- and post-therapy. Through trajectory inference, functional characterization, and regulon analysis, it aims to uncover key mechanisms and drivers of the immune T cell response to anti-PD1 therapy.

See graphical approach.
![image](https://github.com/user-attachments/assets/f7cf5462-edfe-4052-b075-171cc6faeee6)

This repository contains all files and scripts required to reproduce the results presented in the study.  

## Environment and Reproducibility
All analyses were performed in **R**.  
For transparency and reproducibility, the full package list and versions are provided in **`session_info.txt`**.  

## Analysis Workflow
- **Data preprocessing:** performed with **Seurat**  
- **Trajectory inference:** conducted using **Monocle3**  
- **Regulon activity inference:** carried out with **pySCENIC**  

## Network Visualization
Transcription factor (**TF**) interaction networks were generated using **Cytoscape**.  
Details of the Cytoscape environment are included in the corresponding **`session_cytoscape.cys`** file.  
