## Arm GNU Toolchain Installation for Windows10 x86-64

### STM32CubeMX projects for the GCC toolchain
When using **STM32CubeMX** to configure a device or board, selecting toolchain **STM32CubeIDE** will generate the [startup file](../resources/gcc/startup_stm32f429zitx.s) for use with GCC toolchain.

- [Arm GNU Toolchain Downloads](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)

### Step 1 - Download 
- Go to webpage [Arm GNU Toolchain Downloads](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)
- Open a **Find on page** search box by pressing **Ctrl + F** enter text: **Windows (mingw-w64-x86_64) hosted cross toolchains**
- Under **AArch32 bare-metal target (arm-none-eabi)** subheading
- Click to download file **arm-gnu-toolchain‑15.2.rel1‑mingw‑w64‑x86_64‑arm‑none‑eabi.msi** 

### Step 2 - Installation
- When download is complete, click on file to open the installer.
- Accept terms and conditions.
- Install to folder **E:\Arm\GNU-Toolchain-mingw-w64-x86_64-arm-none-eabi**

### Step 3 - Setup the Windows Path
- Press keys **Win+x** then **y**, type in **Find a setting** search bar: **view advanced system settings**, then click on result of search.
- Click on **Environment Variables...** 
- Select **Path** under the **System Variables**. 
- Click **Edit..** then click **New** then enter **E:\Arm\GNU-Toolchain-mingw-w64-x86_64-arm-none-eabi\bin**

### Step 4 - Check Installation
- Open a Command Prompt or Windows Terminal
- Type: **arm-none-eabi-gcc --version**
```bash
> arm-none-eabi-gcc --version
arm-none-eabi-gcc (Arm GNU Toolchain 15.2.Rel1 (Build arm-15.86)) 15.2.1 20251203
Copyright (C) 2025 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
### STM32CubeMX projects for the GCC toolchain
When using **STM32CubeMX** to configure a device or board, selecting toolchain **STM32CubeIDE** will generate the [startup file]() for use with GCC toolchain.

### Obtaining the Python version used by arm-none-eabi-gdb 

- [Obtain the Python version used by GDB](https://github.com/cyrus-and/gdb-dashboard/wiki/Obtain-the-Python-version-used-by-GDB)
- Open a Command Prompt or Windows Terminal
```bash
> ./arm-none-eabi-gdb --batch -ex 'python import sys; print(sys.version)'
```
- The output of the command is
```bash
Python scripting is not supported in this copy of GDB.
```
