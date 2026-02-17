
# Gold Price Analysis (2000–2026)

---
## Data Source & Attribution
- **Dataset:** Historical Gold Prices (1995–2026)  
- **Source:** [Kaggle Dataset](https://www.kaggle.com/datasets/mr1rameez/historical-gold-prices-19952026)  
- **License:** Creative Commons Attribution 4.0 International (CC BY 4.0)  
- **Author/Publisher:** Muhammad Rameez  

> Notice: Any modifications, data cleaning, or transformations performed on the original dataset are documented in the notebook.

---

## Project Overview
This project analyzes gold prices from **August 2000 to February 2026**. The analysis focuses purely on numerical and statistical patterns without considering economic factors.  

Key steps performed:
- **Data Inspection:** Checked for missing values and verified data types using **pandas**.  
- **Gold Price Trends:** Plotted gold prices over the entire period to observe trends.  
- **Custom Return Periods:** Calculated gold returns over different intervals and visualized them.  
- **Annualized Volatility:** Computed volatility for various periods with corresponding visualizations.  

All visualizations were created using **Matplotlib**.


## Project Structure

The project files are organized as follows:

gold-price-analysis Aug 2000 - Fev 2026/

├── Dataset/
│ └── gold_prices_aug_2000_2026_feb.csv # Original dataset from Kaggle

├── notebook/
│ └── XAUUSD_Analysis.ipynb # Jupyter notebook with all analysis

├── images/
│ └── *.png # Charts and visualizations generated

├── pdf/
│ └── XAUUSD_Analysis.pdf # Full project report

├── requirements.txt # Python dependencies

├── LICENSE # Project license

├── .gitignore # Git ignore rules

└── README.md # Project documentation

---

## How to Run
1. Clone the repository:
   ```bash
   git clone <repository-url>


## Dependencies

This project requires the following Python libraries:

- pandas
- numpy
- matplotlib

All matplotlib modules used:
- matplotlib.pyplot
- matplotlib.dates
- matplotlib.ticker


## Open the Jupyter notebook to explore the analysis:
    jupyter notebook notebook/XAUUSD_Analysis.ipynb 


**All charts are saved in the images/ folder and the complete report is in pdf/.**


## Author:
    ** BENSAID Younes **