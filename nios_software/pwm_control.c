#include "pwm_control.h"
#include "io.h"
#include "system.h"

void pwm_set_duty(int duty)
{
    IOWR(PWM_0_BASE, 0, duty);
}
