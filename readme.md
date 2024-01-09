# 🤗 Hugging Face Download Scripts

This project is based on <a href="https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f">🤗 hfd</a>.

## Step 1. Installation

Install `pyyaml` package.

```bash
pip install pyyaml
```

Clone this project.

```bash
git clone https://github.com/yusijin02/huggingface-download-script.git
```

## Step 2. Set Configs

Write your config into `scripts/config.yaml`.

```yaml
id: MODEL_OR_DATASET_ID
is_dataset: True    # Set it `True` if you are downloading a dataset. Set it `False` if you are downloading a model.
num_threads: 2      # (Optional) Numbers of multiple threads.
exclude: null       # (Optional) Flag to specify a string pattern to exclude files from downloading.
hf_username: null   # (Optional) Hugging Face username for authentication.
hf_token: null      # (Optional) Hugging Face token for authentication.
tool: null          # (Optional) Download tool to use. Can be wget (default) or aria2c.
```

⭐️ For flexibility, you may only need to adjust the following two parameters:

- `id`: The id of model/dataset, for example `Salesforce/blip-image-captioning-large`.
- `is_dataset`: Set it `True` if you are downloading a dataset. Set it `False` if you are downloading a model.

⭐️ Please refer to <a href="https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f">hfd</a> for more detailed explanations of the parameters.

## Step 3. Run and download

```bash
bash run.sh
```



