# Human Activity Recognition

This repository contains the `R` script for performing the data cleaning on the "Human Activity Recognition Using Smartphones Dataset Version 1.0".

The original, raw dataset was prepared by:

```
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
```

## Dependencies

The `run_analysis.R` script was developed and tested on the `R` interpreter, version `3.5.1 (2018-07-02)`.

To run it successfully, you'll need your system to provide the dependencies for the `tidyverse` package. The script installs the `tidyverse` and `crayon` if they're not present, but in case the installation is reported as failed, please consult the [tidyverse web-site](https://www.tidyverse.org).

## Running the script

To run the data cleaning part, please run the following from the repository's root directory:

```bash
Rscript run_analysis.R data
```

The invocation might differ a bit if you use Windows (the above should work fine on any Unix-like system like MacOS and Linux).

## The preprocessed data

You don't need to run the script just to get the preprocessed data. This repository contains the result of the successful run in the following files:

| File | Description |
|:--|:--|
| [tidy.data.1.csv](https://github.com/kamilc/human-activity-recognition-data-cleaning/blob/master/tidy.data.1.csv) | The dataset with all variables gathered per the activity type, dataset and the subject |
| [tidy.data.1.summary.csv](https://github.com/kamilc/human-activity-recognition-data-cleaning/blob/master/tidy.data.1.summary.csv) | The dataset with all variables **grouped** by the activity type and the subject |

Details on the datasets variables can be found in the [CodeBook](https://github.com/kamilc/human-activity-recognition-data-cleaning/blob/master/CodeBook.md)
