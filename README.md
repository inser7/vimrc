VIM Configuration
=============
Просто собраны все крутые фичи этого замечательно редактора

Шпаргалка по командам
------------
Копирование Ctrl+c (В англ. раскладке)

В терминале копирование в иксы - через выделение мышкой с шифтом

Автодополнение(omni completion) по табу

yy -  копирование строки 

p  -  вставка, в режиме выделения "y" копирует выделенное

dd -  удаление строки и помещение её в буфер обмена

cc -  удалить и начать редактирование

x  -  удаление символа

[p -  вставка перед строкой

:vs - разделение экрана по  вертикали

:sp - разделение экрана по  горизонтали

ctrl+t - открыть вкладку. Перемещение по ним - shift-tab в терминале только, и ctrl-tab в графическом. Shift-tab - перемещение по вкладкам справа налево

:e <scp |ftp|ftps>://user@host/path/to/the/file.txt - редактирование через сеть

:Ex или :e ./ - файловый менеджер

u, :u[ndo]                отмена предыдущего действия (undo)

CTR-R, :red[o]            отмена отмены предыдущего действия (redo)

:<n>                      перейти на строку #n

%                         перейти к парной скобке

:e <fname>                редактировать файл

:w [fname]                записать изменения

:wa                       сохранить изменения во всех файлах

ma                        поставить маркер

'а                        переместиться к маркеру(Обратите внимание: апостроф обратный, а не прямой!)

Installation
-----------
