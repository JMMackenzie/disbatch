Disjunctive Batch Query Processing
--------

This is the code repo for the IRRJ paper "Simple Techniques for Efficient Top-$k$ Batch Query Processing" by Zhixuan Li and Joel Mackenzie.

## Assumptions
In our code/experiments, we make a few simple assumptions:

1. Queries are assumed to only contain unique terms (no repeats).

2. The same query processing algorithm is used for both subquery processing and query processing.

3. For the online caching algorithms, the query log should be sorted in ascending length (and we also did a secondary lexicographic sort within each length bucket). You can do this offline as a pre-processing step.

## Guidance
Most of the code of interest (after the patch) is located in `pisa/tools/batch_queries.cpp`.

Note that this code shows a minimal working example of the algorithms. If you want to change
the static caching strategy, check out line 388. To change the static algorithm's threshold, you can directly use the `-f` command line flag.

You can build the code by simply following the two functions in `build.sh` - you may wish to refer to the original PISA build instructions as well.

## Data or Questions
If you'd like any data or have any questions, the best thing to do is to file an issue here and I will get back to you as soon as possible.

## Paper Reference

You can view the paper here: https://doi.org/10.54195/irrj.23893

You can cite the paper as follows:
```
@article{Li_Mackenzie_2026, 
    place={Nijmegen}, 
    title={Simple Techniques for Efficient Top-$k$ Batch Query Processing}, 
    volume={2},  
    url={https://irrj.org/article/view/23893},  
    DOI={10.54195/irrj.23893}, 
    number={1}, 
    journal={Information Retrieval Research},
    author={Li, Zhixuan and Mackenzie, Joel}, 
    year={2026}, 
    month={Apr.},
    pages={35–58}
}
```

