# lspci

> Отобразить список всех подключенных PCI-устройств.
> Больше информации: <https://manned.org/lspci>.

- Отобразить список всех подключенных PCI-устройств:

`lspci`

- Показать дополнительную информацию:

`lspci -v`

- Отобразить драйверы и модули, работающие с каждым устройством:

`lspci -k`

- Отобрзить определённое устройство:

`lspci -s {{00:18.3}}`

- Вывести информацию в удобном формате для чтения:

`lspci -vm`
