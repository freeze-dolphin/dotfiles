# Spacemacs

为什么是用 `Spacemacs` ？

问就是用习惯了...

## Installation

需要环境中安装的软件：

- fcitx5 `sudo apt install fcitx5`

- [clj-kondo](https://github.com/clj-kondo/clj-kondo) (会自动安装，如果失败请手动安装)

- yamllint `sudo apt install yamllint`

<!--
- clangd `sudo apt install clangd

- cmake-lsp `pip install cmake-language-server`

- g++-12 `sudo apt install g++-12`

    > **Note**
    > 根据 [askubuntu.com clang++ cannot find iostream](https://askubuntu.com/questions/1449769/clang-cannot-find-iostream)

- clang-format `sudo apt install clang-format`
-->

- lldb `sudo apt install lldb` 

    > **Note**
    > 此版本为 14
    > 仓库中还有 `lldb-15` 可用
    > 如果需要使用 `lldb-15`
    > 请手动修改一下 `.spacemacs`

- wakatime `pip install wakatime`

    > **Note**
    > 默认情况下，会读取 `~/.wakatime/api_key.secret` 中的内容作为 `API Key`
    > 同时，默认使用的 `wakatime` 可执行文件采用 `~/.local/bin/wakatime`（pip 默认会安装在这里）
    > 如过未设置好，可能会导致无法上传数据

安装完后需要初始化的步骤：

<!--
- `M-x dap-cpptools-setup`
-->

- `M-x all-the-icons-install-fonts`

