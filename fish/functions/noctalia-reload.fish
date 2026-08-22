function noctalia-reload --wraps='killall noctalia && noctalia --daemon' --description 'alias noctalia-reload=killall noctalia && noctalia --daemon'
    killall noctalia && noctalia --daemon $argv
end
