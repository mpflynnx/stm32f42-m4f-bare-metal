## pyOCD

**pyOCD** is an open source Python based tool and package for programming and debugging Arm Cortex-M microcontrollers.


```bash
$ hostnamectl
Operating System: Ubuntu 22.04.5 LTS              
          Kernel: Linux 6.8.0-90-generic
    Architecture: x86-64
```

###  Installation
- Create a new Python virtual environment in your home folder using bash script `new-venv-here.sh`
- Download [bash script](./new-venv-here.sh) and place in your executable path.
- Open a new terminal
```bash
$ cd ~
$ new-venv-here.sh
```
- Activate the virtual environment
```bash
$ source .venv/bin/activate
```
- The latest stable version of pyOCD may be installed via pip as follows:

```bash
(.venv) ~$ python3 -mpip install -U pyocd
```
- If you haven't already update the udev rules by following the instructions from [here](https://github.com/pyocd/pyOCD/blob/main/udev/README.md).

- check your pyOCD install
```bash
$ .venv/bin/pyocd
```
- Create a new symbolic link named `pyocd` to `.venv/bin/pyocd` and place it in your executable path.
- If you have `pyocd` errors using Keil Studio for VS Code, make Keil Studio for VS Code use this pyocd install. Append the following to the `.vscode/settings.json` of your CMSIS solution. Change {user} to your linux username

```json
          "cortex-debug.pyocdPath": "/home/{user}/.venv/bin/pyocd",
          "arm-debugger.pyocdPath": "/home/{user}/.venv/bin/pyocd"
```

- PyOCD requires a Target Support Pack to know the memory map of the STM32F429. Since you have the Keil Pack installed, pyOCD can usually find the CMSIS-Pack automatically.
- If it fails to connect or you are using the command line `pyocd` (i.e not via Keil Studio for VS Code), run this in your terminal once:
```bash
$ pyocd pack install stm32f429zi
```
- Check installed packages using:-
```bash
$ pyocd pack show
  Pack                 Version  
--------------------------------
  Keil.STM32F4xx_DFP   3.1.1    

```

### Resource links

- [github.com | pyocd | pyOCD](https://github.com/pyocd/pyOCD)
- [udev rules for Linux](https://github.com/pyocd/pyOCD/blob/main/udev/README.md)
