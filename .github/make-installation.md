# 安装GNU Make

## UNIX/Linux、源代码

### Debian/Ubuntu
```bash
$ sudo apt install make

# Alternatively
$ sudo apt install build-essential
```

### Arch Linux/Manjaro

```bash
$ sudo pacman -S make

# Alternatively
$ sudo pacman -S base-devel
```

### SUSE/OpenSUSE
```bash
$ sudo zypper in -t pattern devel_basis
```

### RHEL/Fedora/CentOS/Oracle Linux
```bash
$ sudo dnf install make

# Or using classical yum
$ sudo yum install make
```

### 镜像
- 清华大学（TUNA）：https://mirrors.tuna.tsinghua.edu.cn/gnu/make/
- 中国科学技术大学：https://mirrors.ustc.edu.cn/gnu/make/
- 上海交通大学：https://mirrors.sjtug.sjtu.edu.cn/gnu/make/
- 南京大学：https://mirrors.nju.edu.cn/gnu/make/

## Windows
http://gnuwin32.sourceforge.net/packages/make.htm

使用Windows 11或10 21H2的用户可通过winget安装（需在管理员权限下操作）：
```powershell-interactive
> winget install GnuWin32.Make
```