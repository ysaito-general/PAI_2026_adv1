#! /bin/sh

## ホストOS でopencode をinstall する．
curl -fsSL https://opencode.ai/v2/install | bash

## ~/.zshrc に以下が追加されるので，以下を直接 実行するか，
## source ~/.zshrc を実行する．
## または，新しく端末を開く．
export PATH=${HOME}/.opencode/bin:$PATH

## 念のため確認．
opencode --version


## ホストOS でOllama をinstall する．
curl -fsSL https://ollama.com/install.sh | sh

## install 後，モデルを取得する．
ollama pull glm-4.7-flash  ※ 1.0 GB
ollama pull llama3.1:8b    ※ 4.9 GB

## 確認．
ollama list

## GPU が使われているか確認．
ollama run llama3.1:8b

## OpenCode は，Ollama のモデルを自動検出できる．
ollama launch opencode --model llama3.1

## または、
##   opencode
## で起動し，画面内で /models を実行して ollama/llama3.1:8b を選択．
