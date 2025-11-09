# vi 模式命令行
set -g fish_key_bindings fish_vi_key_bindings

# 使用 vi 模式后，ctrl-n 编程了采用自动提示的内容，这里改成向下移动
bind --mode insert ctrl-n down-or-search

# 最后初始化 Starship，确保它能访问所有配置
starship init fish | source
