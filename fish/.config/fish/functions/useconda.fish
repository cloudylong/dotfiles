# conda 环境的加载严重影响启动速度
function useconda
    if test -f /opt/anaconda3/bin/conda
        eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    else
        if test -f "/opt/anaconda3/etc/fish/conf.d/conda.fish"
            . "/opt/anaconda3/etc/fish/conf.d/conda.fish"
        else
            set -gx PATH "/opt/anaconda3/bin" $PATH
        end
    end
end
