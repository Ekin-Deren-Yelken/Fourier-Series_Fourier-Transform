# Fourier-Series_Fourier-Transform

This code explored the relationships between DTFS, DFT, and DTFT. By varying signal length, windowing, and transform parameters, we observed how different Fourier techniques influence frequency domain representations of discrete signals

---

**Part 1: Creating a Discrete-Time Periodic Signal (DTPS)**

**Goal:** The objective of this section is to convert an aperiodic continuous-time signal into a discrete-time periodic signal (DTPS). This is done by sampling an aperiodic continuous-time signal at integer time intervals and repeating the sampled sequence over multiple periods.

**Figure 1:** DTPS Representation.
![F1](https://github.com/user-attachments/assets/1cbe0ff9-d9db-463b-968e-210ce4b6246e)

**Explanation:** The original aperiodic signal is sampled from t = 0 to t = 99, and then the samples are repeated for three periods to form y[n]. The plot visualizes the periodic nature of y[n].

---

**Part 2: Basic Discrete Fourier Transform (DFT)**

**Goal:** To analyze the Fourier transform of a discrete sine wave using the Discrete Fourier Transform (DFT) and its inverse (IDFT).

**Figure 2:** Original Signal (Sine Wave)
![F2](https://github.com/user-attachments/assets/45be4c98-0aac-4a0c-9852-6eaf344ff195)

**Figure 3:** Magnitude of DFT Coefficients
![F3](https://github.com/user-attachments/assets/51038136-c26e-40c2-9af8-bd19cec00ac5)

**Figure 4:** Reconstructed Signal using IDFT
![F4](https://github.com/user-attachments/assets/ac34a62a-a7f4-4f4d-b7fc-5932bc1a312d)

**Explanation:** A sine wave with a period of 20 and length of 100 samples is generated. The DFT is computed using the FFT function, and its inverse (IDFT) is also plotted. The nonzero DFT coefficients occur at expected frequency locations due to the periodicity of the sine wave.

---

**Part 3: Changing the Transform Size**

**Goal:** To observe the effects of varying signal length (L) on the DFT coefficients and signal reconstruction.

**Figure 5-6:** Results for L = 1.
![F6](https://github.com/user-attachments/assets/18a83ee7-7603-40d1-8959-831931e8080a)
![F5](https://github.com/user-attachments/assets/4b87dd88-f89c-4132-a139-8602e5917c37)

**Figure 7-8:** Results for L = 2.
![F8](https://github.com/user-attachments/assets/5358bde1-e980-4de0-8496-62ebe97ccf98)
![F7](https://github.com/user-attachments/assets/3c24edc5-60cf-49a0-93fd-b7eb536d6c94)

**Explanation:**
- When L = 1, the signal has exactly one full period, leading to two dominant nonzero DFT coefficients.
- When L = 2, the signal contains one and a half periods, causing additional spectral components.

---

**Part 4: Windowing the Signal**

**Goal:** To understand how truncating a signal affects its frequency components.

**Figure 9:** Windowed Signal.
![F9](https://github.com/user-attachments/assets/d09a24d2-cbd5-4fba-8e02-a098320fdb28)

**Figure 10:** Magnitude of DFT Coefficients (Windowed Signal).
![F10](https://github.com/user-attachments/assets/901051cf-3e3f-4af4-8d5f-729774a28b62)

**Figure 11:** Reconstructed Signal using IDFT (Windowed Signal).
![F11](https://github.com/user-attachments/assets/c293e4af-8910-48c1-b3c1-43d20638a53c)

**Explanation:** The last 40 samples of the sine wave are set to zero. The resulting DFT coefficients show changes in spectral characteristics compared to the original full-length signal.

---

**Part 5: Effect of L on DFT Spectrum**

**Goal:** To study the influence of increasing the total number of data points (L_factor) on the DFT representation.

**Figure 12:** DFT Spectrum for increasing L_factor.
![F12](https://github.com/user-attachments/assets/c4b0a6d2-f8c1-4aa1-8b81-dc946031f5c8)

**Explanation:** As L_factor increases, the total number of points increases proportionally. More data points lead to a more accurate DFT representation and better frequency resolution.

---

**Part 6: Effect of N on DFT Spectrum**

**Goal:** To examine the impact of varying the number of transform points (N_factor) while keeping L constant.

**Figure 13:** DFT Spectrum for different N_factor values.
![F13](https://github.com/user-attachments/assets/57ab9cd7-f7de-44b8-bc5d-84162f0277e9)


**Explanation:** Increasing N_factor samples the DFT more finely, expanding the range of frequency points. Higher N_factor values smooth the appearance of the spectrum and provide better resolution.


