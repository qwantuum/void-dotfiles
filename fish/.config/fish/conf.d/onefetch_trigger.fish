function _run_onefetch_in_project --on-variable PWD
    # Проверяем, совпадает ли текущий каталог с целевым
    if test "$PWD" = (string replace -r '^~' $HOME '~/Projects/ratka-heratka')
        # Проверяем, установлена ли утилита onefetch
        if type -q onefetch
            onefetch
        end
    end
end
