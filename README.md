

## Ridge Regression

Ridge regression is a type of linear regression used to build robust predictive models in the presence of multicollinearity, which occurs when there is high correlation among the features. In such cases, ordinary linear regression can produce inflated weights, leading to decreased predictive performance. Ridge regression addresses this issue by introducing a regularization term.

## Mathematical Formulation

The equation for ridge regression is as follows:

```
y = Xβ + ε
```

Where:
- `y` is the vector of the target variable.
- `X` is the matrix of features.
- `β` is the vector of regression coefficients.
- `ε` is the vector of errors (noise).

In ridge regression, we use the least squares method to estimate the regression coefficients, but with the addition of a regularization term. The regularization term constrains the magnitude of the regression coefficients.

The regularization term uses the squared L2 norm (Euclidean norm), which represents the sum of the squared absolute values of the regression coefficients and constrains their magnitudes. Mathematically, it can be expressed as:

```
Ridge term = λ * ||β||₂²
```

Where:
- `Ridge term` is the regularization term.
- `λ` is the regularization parameter (or hyperparameter) that controls the complexity of the model.
- `||β||₂²` is the squared L2 norm (sum of squared absolute values of the regression coefficients).

In ridge regression, the goal is to minimize the objective function that minimizes the sum of squared errors and includes the regularization term:

```
minimize ||y - Xβ||₂² + λ * ||β||₂²
```

## Role of the Regularization Parameter λ

The regularization parameter `λ` is a crucial parameter for controlling the complexity of the model. A larger value of `λ` increases the influence of the regularization term, resulting in smaller regression coefficient values. This helps prevent overfitting and improves the generalization performance of the model. Conversely, a smaller value of `λ` reduces the influence of the regularization term, yielding results closer to ordinary linear regression.

To find an appropriate value for `λ`, techniques such as cross-validation are commonly used to evaluate the model's performance and estimate the optimal parameter.

The regularization term is a distinctive component of ridge regression, and the selection of an appropriate regularization parameter can improve the predictive performance of the model.

---

# Ridge Regression for Titanic Survival Prediction

This repository implements ridge regression using the Kaggle Titanic dataset. Ridge regression is a type of linear regression that introduces a regularization term (L2 regularization) to mitigate overfitting.

## Dataset

- The Kaggle Titanic dataset was used.
- Data preprocessing steps included the exclusion of the following columns: 'PassengerId', 'Name', 'Cabin', 'Embarked', 'Ticket'.
- The 'Sex' column was one-hot encoded.
- Missing values were imputed using the median.

## Model Construction

In ridge regression, the goal is to minimize the following objective function to find the parameter vector `w`:

```
minimize ||y - Xw||^2 + λ||w||^2
```

Where `y` is the target variable vector, `X` is the feature matrix, `w` is the vector of regression coefficients, and `λ` is the regularization parameter that controls the model's complexity.

This objective function aims to minimize the mean squared error (MSE) of the regression coefficients `w` while introducing a regularization term that constrains the magnitude of the coefficients. The regularization term utilizes the L2 norm of `w`, and `λ` adjusts the weight of the regularization.

## Plotting the Graph



- The losses of the training and validation datasets were plotted for different values of λ.
- The graph with the lowest loss was saved to determine the optimal value of λ.

## Threshold Estimation

- The predicted values obtained from ridge regression were binarized using different threshold values.
- The accuracy was calculated by comparing the predictions with the ground truth.
- The threshold value with the highest accuracy was selected.

## Creating the Submission File

- Predictions were made for the test dataset using ridge regression.
- A CSV file was created for submission, containing the 'PassengerId' and 'Survived' columns.

## File Structure

- `train.csv`: Training dataset (Titanic dataset)
- `test.csv`: Test dataset (Titanic dataset)
- `README.md`: This file
- `main.py`: Implementation code for ridge regression
- `logs/fig/train_loss.pdf`: PDF file containing the graph of losses for the training and validation datasets, among other files.

---

