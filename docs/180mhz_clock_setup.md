## Using STM32CubeMX to configure a 180MHz Clock

### STM32CubeMX Setup
- In the **Pinout & Configuration** tab
- Select **Categories > System Core > RCC**
- Update: **High Speed Clock (HSE)** to **Crystal/Ceramic Resonator**
- On the **STM32F429 Discovery board**, this is an **8MHz** crystal.
- Click on **Clock Configuration Tab**
- Set input frequency: **8 MHz**.
- Select **PLLCLK** as the **System Clock Mux** source.
- Set **HCLK** to **180 MHz** (the max for the F429). Press Enter and let **STM32CubeMX** auto-resolve the multipliers.
