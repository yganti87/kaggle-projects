# Wine Quality Prediction with Linear Regression

This notebook demonstrates how to predict wine quality scores using a Linear Regression model from scikit-learn.

## 🍷 Prediction Problem

### **What are we trying to predict?**
We're predicting the **quality score** of red wines based on their chemical properties. The quality score ranges from 3 to 8, where higher scores indicate better quality wines.

### **Input Features (Chemical Properties):**
- **Fixed acidity**: Tartaric acid content (g/dm³)
- **Volatile acidity**: Acetic acid content (g/dm³) - too much can make wine taste vinegary
- **Citric acid**: Citric acid content (g/dm³) - adds freshness and flavor
- **Residual sugar**: Sugar remaining after fermentation (g/dm³)
- **Chlorides**: Salt content (g/dm³)
- **Free sulfur dioxide**: Free SO₂ content (mg/dm³) - prevents microbial growth
- **Total sulfur dioxide**: Total SO₂ content (mg/dm³)
- **Density**: Wine density (g/cm³)
- **pH**: Acidity level (0-14 scale)
- **Sulphates**: Potassium sulphate content (g/dm³)
- **Alcohol**: Alcohol content (% by volume)

### **Target Variable:**
- **Quality**: Wine quality score (3-8 scale, integer values)

## 📊 Dataset Information

- **Source**: UCI Machine Learning Repository
- **Dataset**: Wine Quality (Red Wine)
- **Size**: ~1,600 samples
- **Features**: 11 chemical properties
- **Target**: Quality score (3-8)

## 🤖 Linear Regression Model

### **What is Linear Regression?**
Linear Regression is a supervised learning algorithm that models the relationship between a dependent variable (target) and one or more independent variables (features) using a linear function.

### **Mathematical Formula:**
```
y = β₀ + β₁x₁ + β₂x₂ + ... + βₙxₙ + ε
```
Where:
- `y` = predicted quality score
- `β₀` = intercept (baseline quality)
- `βᵢ` = coefficient for feature i
- `xᵢ` = value of feature i
- `ε` = error term (residual)

### **scikit-learn's LinearRegression Implementation:**

```python
from sklearn.linear_model import LinearRegression

model = LinearRegression()
model.fit(X_train, y_train)
```

**Key Features:**
- **Ordinary Least Squares (OLS)**: Minimizes the sum of squared residuals
- **No regularization**: Pure linear regression without penalty terms
- **Fast training**: O(n²p) complexity where n=samples, p=features
- **Interpretable**: Coefficients show feature importance and direction

**Model Parameters:**
- `fit_intercept=True`: Whether to calculate the intercept (β₀)
- `copy_X=True`: Whether to copy X or overwrite it
- `n_jobs=None`: Number of jobs for parallel computation

**Model Attributes:**
- `coef_`: Feature coefficients (β₁, β₂, ..., βₙ)
- `intercept_`: Intercept term (β₀)

## 📈 Model Evaluation Methods

### **1. Quantitative Metrics:**

#### **Mean Squared Error (MSE):**
```python
mse = mean_squared_error(y_test, y_pred)
```
- Measures average squared difference between predictions and actual values
- Lower values = better performance
- Units: squared quality points
- **Interpretation**: Average squared prediction error

#### **R² Score (Coefficient of Determination):**
```python
r2 = r2_score(y_test, y_pred)
```
- Measures proportion of variance explained by the model
- Range: 0 to 1 (1 = perfect predictions)
- **Interpretation**: 
  - R² = 0.7 means model explains 70% of variance
  - R² = 0.3 means model explains 30% of variance

### **2. Visual Evaluation Methods:**

#### **A. Actual vs Predicted Scatter Plot:**
- **What to look for**: Points close to diagonal line (y=x)
- **Good fit**: Points clustered around diagonal
- **Poor fit**: Points scattered far from diagonal

#### **B. Residual Plot:**
- **What to look for**: Random scatter around y=0 line
- **Good fit**: No patterns, random distribution
- **Problems**: Curves, funnels, or clusters indicate model issues

#### **C. Residual Distribution (Histogram):**
- **What to look for**: Normal distribution shape
- **Good fit**: Bell-shaped curve centered at zero
- **Problems**: Skewed or non-normal distribution

#### **D. Q-Q Plot:**
- **What to look for**: Points on straight line
- **Good fit**: Residuals follow normal distribution
- **Problems**: Points deviate from line

#### **E. Feature Importance Plot:**
- **What to look for**: Which features have strongest influence
- **Interpretation**: Larger absolute coefficients = more important features

## 🎯 Model Assumptions

Linear Regression assumes:
1. **Linearity**: Relationship between features and target is linear
2. **Independence**: Residuals are independent of each other
3. **Homoscedasticity**: Residuals have constant variance
4. **Normality**: Residuals follow normal distribution

## 🔍 What Makes a "Good" Linear Regression Model?

### **Good Model Indicators:**
- ✅ **High R² score** (close to 1.0)
- ✅ **Low MSE** (close to 0)
- ✅ **Random residuals** (no patterns in residual plot)
- ✅ **Normal residual distribution**
- ✅ **Points close to diagonal** in actual vs predicted plot

### **Problem Indicators:**
- ❌ **Low R² score** (< 0.3)
- ❌ **High MSE** (large prediction errors)
- ❌ **Patterned residuals** (curves, funnels, clusters)
- ❌ **Non-normal residual distribution**
- ❌ **Points far from diagonal** in actual vs predicted plot

## 🚀 Running the Notebook

1. **Open** `wine_linear_regression.ipynb` in JupyterLab
2. **Run cells sequentially** to:
   - Load and explore the dataset
   - Visualize data distributions and correlations
   - Train the Linear Regression model
   - Evaluate performance with comprehensive visualizations
3. **Interpret results** using the evaluation methods above

## 📚 Key Takeaways

- **Linear Regression** is a simple but powerful baseline model
- **Visual evaluation** is crucial for understanding model performance
- **Residual analysis** reveals model assumptions and potential issues
- **Feature importance** helps understand what drives wine quality
- **Multiple evaluation methods** provide comprehensive model assessment

This notebook serves as a foundation for understanding both the wine quality prediction problem and linear regression model evaluation techniques. 