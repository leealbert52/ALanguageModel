---
title       : A Simple Language Model
subtitle    : 
author      : ALee
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained    # {standalone - to Rpubs, draft,  selfcontained}
knit        : slidify::knit2slides
---

## The algorithm
This simple language model predicts the last word after the user enters a text.
The training data come from HC Corpora that consists of

1. US blog postings
2. US News
3. US twitter messages

These 3 data sources were combined, cleaned to form a corpus for training. The following steps were followed:

1. Apply basic concept of tidying texts before exploratory analysis begins 
2. The concepts of unigram, bigram and trigrams using tokenizers
3. Generative n-gram language model
4. The basic concept of discounting method using Katz Backoff approach

--- .class #id 

## Corpus

Literature suggests that it enhance the prediction quality if different types of texts are mixed. Here we are given three types of texts.

Literature suggests the bigger the dataset for training the better the prediction of the model. However, the memory limitation and runtime performance are also important considerations, especially when the language model is to be deployed on small device, such as smartphone.

Literature also suggests that removal of unusual/sparse terms greatly reduce the training data size and does not affect the performance. 

We follow these steps, in addition to taking a random sample of 70% from each of the sources so that the prediction can be returned fairly quickly, with a trade off on the prediction accuracy.

---

## Instructions
The result is given by a Shiny web application. The prediction is given in a form of term-probabilities table such that the term with the highest probability is the prediction.

After the text is entered in the text input box, 

1. The entered text is shown in the main panel of the app
2. The text is then preprocessed behind the scene, as the same way the corpus was processed for training the model. The resulting bigram is then displayed, which is used for prediction
3. A data table with two columns is rendered. The first column gives the terms, whereas the second column gives the respective probabilities in descending order, with the best prediction on the top
4. Several sample texts were given as demo.
5. A slight delay for the first time. After that the prediction is returned fairly fast, albeit with not so great accuracy. 

---

## Experiences

We encounter such challenges:

1. In order to achieve better accuracy for the predictions, a diverse set of texts should be included.

2. We take a random sample of 70% from the three data sources so that the model development process can speed up. The model suffers prediction accuracy somewhat.

3. Language model development is a difficult area and pose greater challenge, especially with smoothing techniques, such as Katz Backoff model and Good-Turing 


