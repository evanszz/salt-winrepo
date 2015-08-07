{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "C:\Program Files (x86)" %}
{% else %}
    {% set PROGRAM_FILES = "C:\Program Files" %}
{% endif %}
putty:
  0.65:
    full_name:  'PuTTY release 0.65'
    installer: 'http://the.earth.li/~sgtatham/putty/0.65/x86/putty-0.65-installer.exe'
    install_flags: '/SP- /verysilent /norestart'
    uninstaller: '{{ PROGRAM_FILES }}\PuTTY\unins000.exe'
    uninstall_flags: '/SP- /silent /verysilent /suppressmsgboxes /norestart /UNINSTMODE'
    locale: en_US
    reboot: False 
  0.64:
    full_name:  'PuTTY release 0.64' 
    installer: 'http://the.earth.li/~sgtatham/putty/0.64/x86/putty-0.64-installer.exe'
    install_flags: '/SP- /verysilent /norestart'
    uninstaller: '{{ PROGRAM_FILES }}\PuTTY\unins000.exe'
    uninstall_flags: '/SP- /silent /verysilent /suppressmsgboxes /norestart /UNINSTMODE'
    locale: en_US
    reboot: False
