# Voting Booklet Bias: Stance Detection in Swiss Federal Communication

This repository contains the data and code for the paper _Voting Booklet Bias: Stance Detection in Swiss Federal Communication_ by Eric Egli, Noah Mamié, Mathias Müller and Eyal Liron Dolev. The paper has been presented at the SwissText conference 2023 and is available [here](./media/voting-booklet-bias-paper.pdf).

## Data Overview

1. [Voting booklets](./data/admin/) - PDF versions of the used voting booklets ([online overview](https://www.admin.ch/gov/de/start/dokumentation/abstimmungen/20220925.html))
2. [Statements](./data/raw/) - Statements extracted from the voting booklets
3. [Predictions](./data/predictions/) - Predicted stances for each statement

## Reproducing the Results

1. Clone this repository:

   ```bash
   git clone git@github.com:ZurichNLP/voting-booklet-bias.git
   ```

2. Init and update the submodules - this will clone the [`xstance` repository](https://github.com/ZurichNLP/xstance):
   ```bash
   git submodule init
   git submodule update
   ```
3. Follow the instructions over in `xstance` to setup and train the M-BERT model\*
4. Run the `predict.sh` script to predict the stances for each statement:
   ```bash
   bash predict.sh
   ```
   Note that this will overwrite the current predictions in `./data/predictions/`.
5. (Optional) For plotting and further examining the results, you can create a new conda environment:
   ```bash
   conda create --name vbb2023 --file requirements.txt
   ```
   You are now ready to explore our main [notebook](./main.ipynb).

\* _Note: We will soon provide a pre-trained model for download._

## Citation

Will follow as soon as the paper is published on arXiv.

## Contact

If you have any questions, do not hesitate to contact us!
