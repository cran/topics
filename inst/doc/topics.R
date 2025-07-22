## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
evaluate = FALSE

## ----dtm, eval = FALSE, warning=TRUE, message=TRUE----------------------------
#  
#  library(topics)
#  
#  dtm <- topicsDtm(
#    data = dep_wor_data$Depword)
#  
#  # Check the results from the dtm and refine stopwords and removal rates if necessary
#  dtm_evaluation <- topicsDtmEval(
#    dtm)
#  dtm_evaluation$frequency_plot

## ----model, eval = FALSE, warning=FALSE, message=FALSE------------------------
#  
#  model <- topicsModel(
#    dtm = dtm,
#    num_topics = 20,
#    num_iterations = 1000)
#  

## ----preds, eval = FALSE, warning=FALSE, message=FALSE------------------------
#  
#  preds <- topicsPreds(
#    model = model,
#    data = dep_wor_data$Depword)
#  

## ----test, eval = FALSE, warning=FALSE, message=FALSE-------------------------
#  
#  test <- topicsTest(
#    data = dep_wor_data,
#    model = model,
#    preds = preds,
#    x_variable = "PHQ9tot",
#    controls = c("Age"),
#    test_method = "linear_regression")
#  

## ----plot_list, eval = FALSE, warning=FALSE, message=FALSE--------------------
#  
#  plot_list <- topicsPlot(
#    model = model,
#    test = test,
#    figure_format = "png")
#  
#  # showing some of the plots
#  plot_list$square1

