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
- Download [bash script](docs/new-venv-here.sh) and place in your executable path.
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

### Resource links

- [github.com | pyocd | pyOCD](https://github.com/pyocd/pyOCD)
- [udev rules for Linux](https://github.com/pyocd/pyOCD/blob/main/udev/README.md)
