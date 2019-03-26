function fish_prompt
    set_color purple
    echo -n [
    set_color normal
    echo -n $USER' ' 
    if test "$PWD" != "$HOME"    
        echo -n (basename $PWD)
    else 
        echo -n '~'
    end
    set_color purple
    echo -n '] '
end
