# Writing a Technical Report (CS 4407)

A technical report in data science or machine learning summarizes an experiment, analysis, or model development, focusing on key insights from data handling, modeling, and evaluation. Limit your report to one page, single-spaced, to enforce conciseness—prioritize the most critical elements, as not all methodological steps, findings, or data aspects are equally important. Select what advances the core objective, such as highlighting pivotal decisions that impacted outcomes over minor details. Use TeX formatting for equations like \(E=mc^2\) where necessary. There are 3 sections to include in your report: Introduction, Methodology, Results. [An example report is provided here](example/report.pdf) and the [associated code here](example/code.r).

## Introduction
Start with a paragraph (3-5 sentences) defining the project's aim, like predicting outcomes from a dataset or optimizing a machine learning model. Specify the data source (e.g., a built-in dataset like mtcars for classification tasks) and key features used, along with expected results (e.g., achieving 85% accuracy in classification). Relate it to real-world applications, such as improving recommendation systems, to make the purpose relatable and demonstrate why the work matters in data-driven decision-making.

## Methodology
Describe your approach in 4-6 sentences, emphasizing essential tools and steps. For instance, outline libraries like nnet for model training or dplyr for data preprocessing, and explain the model architecture (e.g., a random forest with 100 trees via randomForest or a neural network with two hidden layers of 64 units each using ReLU activation). Justify choices based on the problem's needs—e.g., selecting cross-validation to handle small datasets and prevent overfitting—focusing on decisions that significantly influenced performance rather than exhaustive listings.

## Results
Analyze outcomes in 4-6 sentences, centering on primary metrics like accuracy, precision, recall, or RMSE, and interpret their implications (e.g., a model with high recall but low precision indicates effective detection but many false positives in fraud analysis). Discuss key findings, such as how feature engineering improved results by 15%, and suggest targeted improvements, like tuning hyperparameters differently to address overfitting. Prioritize insights that reveal the project's strengths and limitations, ensuring the discussion ties back to the introduction's goals for a cohesive narrative.

## Grading Rubric
Your report will be graded out of 10 points based on the following criteria. The rubric emphasizes clarity, conciseness, and technical depth.

| Criteria                  | Description                                                                 | Points |
|---------------------------|-----------------------------------------------------------------------------|--------|
| **Structure and Conciseness**  | Report is exactly one page, single-spaced, with clear headings for Introduction, Methodology, and Results. Proper use of TeX for equations if applicable. Writing is professional, concise, and free of errors. Prioritizes critical elements without unnecessary information. | 2     |
| **Introduction**          | Clearly defines the project's aim, specifies data source and key features, states expected results, and relates to real-world applications. Demonstrates understanding of the experiment's purpose (3-5 sentences). | 2     |
| **Methodology**           | Describes tools, steps, and model architecture in 4-6 sentences. Provides strong justification for choices (e.g., why methods and parameters). Focuses on decisions impacting performance, allowing for replicability. | 2     |
| **Results**               | Analyzes key metrics and interprets implications in 4-6 sentences. Discusses findings, strengths, limitations, and targeted improvements. Ties back to introduction for cohesion. | 2     |
| **Technical Depth and Accuracy** | Technical content is accurate, demonstrates unit-relevant knowledge, and provides good depth in explanations. | 2     |

---

## Experiments
For each unit of the course here are targeted experiments you may choose to write a report on. The experiments below are there to help you get started, but feel free to design your own experiments as well. It's good to use topics related to the unit and show your understanding of the material, but it is not a requirement. It's best to choose an experiment you are genuinely interested in. If you are not sure if your experiment is appropriate please ask me.

### Unit 1
1. Use the built-in [iris dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/iris) to perform basic data exploration and classify species manually based on simple thresholds to demonstrate supervised learning.
2. Apply unsupervised learning on the [mtcars dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/mtcars) by grouping cars based on features using simple distance calculations, and compare results to known categories.
3. Explore the [airquality dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/airquality) to mine for trends using base R functions to illustrate machine learning basics.

### Unit 2
1. Use the [data.table](https://cran.r-project.org/package=data.table) package to manage and query the [swiss dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/swiss) to demonstrate efficient data handling in memory.
2. Utilize [ggplot2](https://cran.r-project.org/package=ggplot2) to visualize trends in the [cars dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/cars), and generate a simple report with summary statistics using base R.
3. Perform statistical analysis on the [PlantGrowth dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/PlantGrowth) using the [stats](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/00Index.html) package, including t-tests and ANOVA, to explore data insights without external tools.

### Unit 3
1. Perform linear regression on the [faithful dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/faithful) using `lm()` to predict waiting time based on eruption duration, plot the fitted line, and calculate the mean squared error.
2. Apply logistic regression with `glm()` on the [ToothGrowth dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/ToothGrowth) for binary classification using dose as a predictor, and evaluate with confusion matrix.
3. Use `nls()` for curvilinear regression on the [longley dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/longley) to model GNP as a function of Year, minimizing error and plotting residuals.

### Unit 4
1. Implement k-nearest neighbors classification using the [class](https://cran.r-project.org/package=class) package on the [USArrests dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/USArrests) to predict high/low urban population based on crime features, and compute accuracy.
2. Build a decision tree with [rpart](https://cran.r-project.org/package=rpart) on the [ChickWeight dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/ChickWeight) to classify diet groups using weight and time features, and visualize the tree.
3. Apply Naive Bayes from the [e1071](https://cran.r-project.org/package=e1071) package on the [CO2 dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/CO2) for treatment classification based on uptake and concentration, justifying priors and evaluating with cross-validation.

### Unit 5
1. Construct a decision tree from scratch using entropy and information gain on a small subset of the [rock dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/rock) for binary splits.
2. Use the [rpart](https://cran.r-project.org/package=rpart) package to build an ID3-like tree on the [trees dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/trees) for classifying high/low Volume, calculating entropy at each node.
3. Apply the C4.5 algorithm via the [RWeka](https://cran.r-project.org/package=RWeka) package on the [InsectSprays dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/InsectSprays) to predict effective spray types based on count, handling categorical variables.

### Unit 6
1. Simulate a single artificial neuron from scratch, using an activation function on synthetic linear data to classify points, and adjust weights manually.
2. Implement the perceptron algorithm from scratch on the [women dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/women) to classify based on height/weight, using an activation function and updating weights over epochs until convergence.
3. Use base R to model neuron weighting on the [pressure dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/pressure) for binary classification of high/low temperature, applying an activation function, plotting decision boundaries, and discussing linear separability.

### Unit 7
1. Build a multi-layer perceptron using the [neuralnet](https://cran.r-project.org/package=neuralnet) package on the [warpbreaks dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/warpbreaks) for breaks prediction, and train with backpropagation.
2. Implement backpropagation from scratch on a small nonlinear dataset like synthetic circles, using an activation function and updating weights over epochs.
3. Use the [nnet](https://cran.r-project.org/package=nnet) package to create an MLP on the [attitude dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/attitude) for rating regression, and analyze weight updates via backpropagation.

### Unit 8
1. Apply k-means clustering with `kmeans()` on the [quakes dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/quakes) to group into clusters, visualize with PCA, and compare to stations.
2. Perform hierarchical clustering using `hclust()` on the [sleep dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/sleep) based on numeric features, plot the dendrogram, and cut into clusters for interpretation.
3. Use `agnes()` from the [cluster](https://cran.r-project.org/package=cluster) package for agglomerative clustering on the [morley dataset](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/morley), generating a dendrogram and discussing cluster validity.