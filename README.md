# FCM
FCM is a simple program to calculate the value of the concepts of a cognitive map. It follows the traditional literature and authors like Kosko and Carlsson. Basically, it is a Hopfield neural network, although in the incidence matrix connections between the same node can appear. Furthermore, we employed a dynamic update of the weights based on Hebbian learning. The FCM represents a model of a system. Used to create attitudes, shaping ideas and make decisions.  #FCM #Fuzzy #Cognitive #MAP #Decisionmaking #Matlab #Code #algorithms 


# Dynamic Fuzzy Cognitive Maps (DFCM) Pseudocode

This document outlines the pseudocode for implementing Dynamic Fuzzy Cognitive Maps (DFCM), focusing on the dynamic updating of concept states and weights based on expert inputs and Hebbian learning.

## Overview

DFCM is a method that dynamically updates the states of concepts and the weights between them using a fuzzy cognitive map approach. The algorithm employs a form of Hebbian learning to adjust the weights based on the concept states' changes.

## Pseudocode

### Initial Setup

- **Concepts Vector (`c`):** Initialize with the initial state of each concept.
- **Incidence Matrix (`w`):** Initialize with expert-provided weights between concepts.
- **Learning Rate (`alfa`):** Set the learning rate.

### Algorithm Process

For each iteration (k) from 1 to 5:
1. Calculate the new concept values (c1) by multiplying the concepts vector (c) with the incidence matrix (w).

2. 2. Update concept states:
    For each concept (`i`) from 1 to 7:
        - If `c1[i]` is between 0 and 1: leave `c1[i]` as is.
        - If `c1[i]` is less than 0: set `c1[i]` to 0.
        - Otherwise: set `c1[i]` to 1.

3. Hebbian Learning of Concepts:
    For each concept (`i`) from 1 to 7:
        For each concept (`j`) from 1 to 7:
            - If `i` is equal to `j`: no weight update.
            - Otherwise:
                - Calculate the change in concept `i` (`dci`) as the difference between new and old values.
                - Calculate the change in concept `j` (`dcj`) as the difference between new and old values.
                - If the product of `dci` and `dcj` is positive:
                    - Calculate the weight update (`dw`) as the product of `dci`, `dcj`, and the learning rate (`alfa`).
                - Update the weight from concept `i` to concept `j` by adding the calculated weight update (`alfa*dw`) to the current weight.

4. Update the concepts vector (`c`) with the new concept values (`c1`).
5. Print the final states of the concepts.



## Final Notes

The pseudocode above serves as a guideline for implementing DFCM in software. It highlights the algorithm's core logic, including initialization, dynamic updating of concept states, and weight adjustment through Hebbian learning.
