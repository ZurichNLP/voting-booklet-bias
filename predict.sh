cd xstance/mbert_baseline

# German predictions
allennlp predict mymodel ../../data/raw/statements_raw_2022_de.jsonl \
    --include-package allennlp_xstance \
    --predictor xstance_predictor \
    --cuda-device 0 \
    --output-file ../../data/predictions/statements_pred_2022_de.jsonl

# German predictions
allennlp predict mymodel ../../data/raw/statements_raw_2022_fr.jsonl \
    --include-package allennlp_xstance \
    --predictor xstance_predictor \
    --cuda-device 0 \
    --output-file ../../data/predictions/statements_pred_2022_fr.jsonl

# German predictions
allennlp predict mymodel ../../data/raw/statements_raw_2022_it.jsonl \
    --include-package allennlp_xstance \
    --predictor xstance_predictor \
    --cuda-device 0 \
    --output-file ../../data/predictions/statements_pred_2022_it.jsonl

# Mulilingual predictions
allennlp predict mymodel ../../data/raw/statements_raw_2022_defrit.jsonl \
    --include-package allennlp_xstance \
    --predictor xstance_predictor \
    --cuda-device 0 \
    --output-file ../../data/predictions/statements_pred_2022_defrit.jsonl