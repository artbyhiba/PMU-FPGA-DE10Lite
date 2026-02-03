#include "system.h"
#include "io.h"
#include <stdio.h>
#include "adc_read.h"
#include "pwm_control.h"

int main()
{
    printf("PMU FPGA System Started\n");

    while(1)
    {
        int adc_value = adc_read();

        // Scale ADC to PWM range
        int pwm_value = adc_value >> 2;   // 12 bit → 10 bit

        pwm_set_duty(pwm_value);

        printf("ADC: %d  PWM: %d\n", adc_value, pwm_value);
    }

    return 0;
}
