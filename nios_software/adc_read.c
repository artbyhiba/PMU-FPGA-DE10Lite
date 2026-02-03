#include "adc_read.h"
#include "io.h"
#include "system.h"

int adc_read()
{
    return IORD(ADC_0_BASE, 0);
}
