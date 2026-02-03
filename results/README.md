FPGA Switch Input → Output Verification
Test Description

The FPGA hardware design was tested using onboard switches as digital inputs.

Test Input

Switch values applied:

SW[2:0] = 0 1 1

Expected Behavior

The FPGA logic should correctly read switch values and generate corresponding output signals on LEDs or display modules.

Result

Observation

The FPGA output matched the expected logic behavior.
The LED/display output correctly reflected the applied switch combination.

🔹 NIOS II Software Processor Result
Test Description

The NIOS II processor reads hardware input registers and processes control signals for system monitoring and PWM control.

Expected Behavior

Software reads input values correctly

Software sends correct processed output to FPGA peripherals

Result

Observation

The NIOS II processor successfully:

Read hardware register values

Executed control algorithm

Sent correct output data to FPGA logic

This confirms correct HW–SW integration.

🔹 ADC to PWM Conversion Result
Test Description

Analog input signal is converted using ADC and mapped to PWM duty cycle for LED brightness / signal control.

Expected Behavior

Higher ADC input value → Higher PWM duty cycle
Lower ADC input value → Lower PWM duty cycle

Result

Observation

The PWM output waveform changes proportionally with ADC input value.
This confirms correct ADC sampling and PWM generation chain.
