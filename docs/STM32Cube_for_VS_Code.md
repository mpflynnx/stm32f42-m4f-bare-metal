## STM32Cube for VS Code7

```bash
$ hostnamectl
Operating System: Ubuntu 22.04.5 LTS              
          Kernel: Linux 6.8.0-90-generic
    Architecture: x86-64
```

How to create a project for use with Visual Studio Code and the STM32CubeIDE for VS Code extension.

### Creating CMake Project using STM32CubeMX
- Download and install **STM32CubeMX** STM32Cube initialization code generator from [st.com](https://www.st.com/en/development-tools/stm32cubemx.html#get-software)
- Open **STM32CubeMX**
- Find **Start My project from ST Board**. Click on **ACCCESS TO BOARD SELECTOR**
- In the **Commercial Part Number** enter
**STM32F429I-DISC1**
- Select the board from the Board List
- Click on **Start project**
- Click **Yes** to **initialize all board peripherals** popup.
- Click the **Project Manager** tab
- Under **Project Settings** enter a Project Name i.e **STM32_VS_Code_Project**
- Enter a location for **Project Location**.
- From the **Toolchain / IDE** drop down select **CMake**
- Click on **GENERATE CODE** button
- The project should be successfully created in the location given.
- Close down **STM32CubeMX*

### Configuring Visual Studio Code for STM32Cube projects
- Open **Visual Studio Code**
- Click on the **Extensions** icon. Enter in the search bar: **stm32cube**. Then select **STM32CubeIDE for Visual Studio Code** from the list of results.
- Click the **Install** button
- Wait while the extension and dependencies are downloaded and installed.

### Using Visual Studio Code with the STM32CubeMX CMake project
- Click on menu **File | Open Folder...**
- Navigate to the folder containing the **STM32CubeMX CMake** project.
- Ignore Bad CMake executaqble: "". check to make sure it is installed
- Click **Yes** to Configure CMake project as STM32Cube project
- Click Build and select Debug
- Click on the OUTPUT tab to see the results of the Build process

### Flashing the board and debugging
- Connect the board to the computer
- Select **Run and Debug** icon
- Expand **STM32CUBE DEVICES AND BOARDS** dropdown
- Click on **STM32 STLink STMicroelectronics**
- If required upgrade **ST-Link firmware** by clicking on the **Down Arrow Circle** icon. The Upgrade should begin.
- When successfully upgraded.
- Click on **Run and Debug** icon
- Select **STM32Cube: STLink GDB Server**
- The DEBUG CONSOLE should be selected and the debug session started.
- You may have conflicting warning about **clangd**, disable the non STM32Cube clangd extensions
- Use the debug icons as required.

### Resource links
- [st.com | STM32CubeMX
 | STM32Cube initialization code generator](https://www.st.com/en/development-tools/stm32cubemx.html)
- [youtube.com | STMicroelectronics | Get started with STM32Cube for VS Code: from installation to debugging](https://www.youtube.com/watch?v=aWMni01XGeI)
- [Visual Studio Code | Extension Packs | STM32CubeIDE for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=stmicroelectronics.stm32-vscode-extension)