## Arm Keil Studio Pack for Visual Studio Code

How to create a project for use with **Visual Studio Code** and the **Arm Keil Studio Pack (MDK v6)** extension.

I found using **Windows 10** and **Visual Studio Code** the most successful setup.

### Configuring Visual Studio Code for Arm Keil Studio CMSIS solutions
- Open **Visual Studio Code**
- It's best to create a new profile to have its own set of extensions, settings, keyboard shortcuts, and UI layouts.
- Open the Profiles Menu: Click the Manage gear icon in the bottom-left corner of the window and select Profiles. Alternatively, go to File > Preferences > Profiles.
- Create a New Profile: Select Create Profile....
- Configure: Give it a name (e.g., "Keil Studio Pack for VS Code") and choose a base template. You can start with a "Empty" profile if you want to be very selective about which extensions are active.
- Click on the **Extensions** icon. Enter in the search bar: **arm keil**. Then select **Arm Keil Studio Pack (MDK v6)** from the list of results.
- Click the **Install** button
- Wait while the extension and dependencies are downloaded and installed.

### Creating a new CMSIS solution to complete setup

- Click on the **CMSIS circle tick** Icon on the the left hand bar
- Click Create Solution
- Click on the down arrow below **Target Board (Optional)**
- Click in the **Search** bar and type your demo board number i.e **STM32F429I-DISC1**
- Click on blue **Select** button
-  Click on the down arrow below **Templates, Reference Applications, and Examples**
- Under **Web | Csolution Examples**, click on Blinky
- Update **Solution Sub Folder** and select a **Solution Base Folder**.
- Click on the blue **Create** button
- A number of additional tools will now be  downloaded. Wait for the the button blue bar to display **Arm Tools:5**
- When asked to activate licence just click **non-commercial free of charge**
- Plug in the demo board
- Click on the CMSIS | CMSIS:BLINKY Hammer icon, to start building the application.
- Click on the **Load and Debug** bug icon to test debugging
- The board should be flashed and the **blinky** application running in debug mode.
- Stop the debugger.
- Click on the three dots to see a list of options.