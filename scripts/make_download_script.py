import yaml

with open('./scripts/config.yaml', 'r') as file:
    config = yaml.load(file, Loader=yaml.SafeLoader)
    
id = "pscotti/naturalscenesdataset"
script  = "#!/usr/bin/env"
script += "\n"
script += f"./scripts/hfd.sh {config['id']}"
if config["exclude"]: script += f" --exclude {config['exclude']}"
if config["hf_username"]: script += f" --hf_username {config['hf_username']}"
if config["hf_token"]: script += f" --hf_token {config['hf_token']}"
if config["tool"]: script += f" --tool {config['tool']}"
if config["num_threads"]: script += f" --x {config['num_threads']}"
if config["is_dataset"]: script += f" --dataset"
with open("./scripts/download.sh", "w") as sf:
    sf.write(script)