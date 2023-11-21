# dconf

备份出来的 `dconf` 配置文件

## /org/cinnamon/

创建备份:

```shell
$ dconf dump /org/cinnamon/ > cinnamon_desktop_backup
```

恢复备份:

```shell
$ dconf load /org/cinnamon/ < cinnamon_desktop_backup
```

