# Local Jupyter Notebooks Project

This project provides a ready-to-run environment for using Jupyter notebooks locally.

## ✅ Features

- Python virtual environment setup
- JupyterLab integration
- Local data loading support
- Pre-configured data science packages

---

## 🚀 Getting Started

### 1. Clone or download this repository

```bash
git clone <your-repo-url>
cd kaggle-projects
```

### 2. Set up the virtual environment and Jupyter Lab

```bash
chmod +x setup_env.sh
./setup_env.sh
```

This will:

- Create and activate a virtual environment
- Install required packages (pandas, numpy, matplotlib, seaborn, scikit-learn, jupyterlab)
- Launch JupyterLab

---

## 📁 Data Directory

Place any datasets in the `data/` directory. For the sample notebook, you can either:

1. **Download manually**: Place the `winequality-red.csv` file in `data/winequality-red.csv`
2. **Use online source**: The sample notebook loads the dataset directly from the UCI repository using a URL

---

## 📓 Sample Notebook

Navigate to the `notebooks/` folder in JupyterLab and open:

```
wine_linear_regression.ipynb
```

You can run all the cells to:

- Load and explore the dataset
- Visualize data distributions and correlations
- Train a linear regression model
- Evaluate model performance with comprehensive visualizations

---

## 🧠 How to Run the Jupyter Notebook Locally

Once the environment is set up, launch Jupyter Lab manually using:

```bash
source venv/bin/activate
jupyter lab
```

Or just run:

```bash
./setup_env.sh
```

This will launch a local Jupyter Lab server on [http://localhost:8888](http://localhost:8888).

Navigate to the `notebooks/` directory and open `wine_linear_regression.ipynb`.

---

## 📦 Included Packages

The virtual environment comes with these pre-installed packages:

- **pandas**: Data manipulation and analysis
- **numpy**: Numerical computing
- **matplotlib**: Basic plotting
- **seaborn**: Statistical data visualization
- **scikit-learn**: Machine learning algorithms
- **jupyterlab**: Interactive development environment

---

## 🎯 Project Structure

```
kaggle-projects/
├── data/                    # Place your datasets here
├── notebooks/              # Jupyter notebooks
│   └── wine_linear_regression.ipynb
├── venv/                   # Virtual environment (created by setup)
├── requirements.txt        # Python dependencies
├── setup_env.sh           # Setup script
└── README.md              # This file
```

---

Enjoy exploring data science with Jupyter notebooks!

